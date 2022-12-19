Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCD665108D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 17:34:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 189524018B;
	Mon, 19 Dec 2022 16:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 189524018B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671467685;
	bh=iZGfylGHmqXCI8GTtKzQGh/meyEefcp9ipD3JUL/mXg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s9wH0oCP37XApqMXPnar4qji1OKlIdKJfQX4cDPWTUjex+Je1twIO3Rr/x6mGADU5
	 EkzzFUYrHvXUdnKjbz2C+x8sE6loawCfeAp/X91XBrqFw34t/my67jR9qFAR0hWMge
	 iCxbEqBPSKaRq+AcWAxKuEbLjrcHhwqGsvFoRoViQG1kRhaUIM5nOVzq3ELPkqijQy
	 +bTXwfiyON3cbMnX4mKuK0z/9Y1vdAXImBhyM6jNymMa3TCZz/53FsG6432LCZ3eaH
	 UH6mY84yk7xkijJCWDbRn15ZBlbVBSImfQVXun1goF0y+9Onw9MaOIfBml3Pl8Evev
	 WWqXdc/UNjxDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qT9VRQT9rGcx; Mon, 19 Dec 2022 16:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99460401BC;
	Mon, 19 Dec 2022 16:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99460401BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D696D1BF36D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF3FE813E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF3FE813E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hr1aeCS0OiVb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 08:18:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD0028130C
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD0028130C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:18:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="321186624"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="321186624"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 00:18:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="757534015"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="757534015"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 19 Dec 2022 00:18:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 00:18:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 00:18:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 00:18:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3XH/MasopqdnGyukVyzeF9jQlkjehFgdehVVCn+x6Oyod0gMhdRrHaQvpA/DxfPZT4Ce3D8ropxtR9C2K6qBuRKcdHzcpPcyx0myHlzy0FYmti7NzFIood7T1bOJPvzf43of/a2RslOuYa1RcMtlty1G/N7mfAKP/cpeLFqvOPTuEqnwPANOlGTyCAL5NVPNUPwTsLV/J6mR2oUak8lc7QjM7MznY0/vQa3kY5tIakrTzTjByR+LFow4aHqEyPylClmsrLsESFK6Cx/GmRz6sw+/HwdLgOoCZNFomARU9YBtf0ZneBO7dF0XVsbBsxJ1H+SneS141gOn0u+hZGcNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fbJVsUtr/x7sI3mc2kvbZeDza1XbFn+6+00TDDVaU94=;
 b=ItIL2TUowFMnf+A9siz2tLcr1m1+db8ZWp2NiTqDd8FQxX37md3sCoPOa8vGeG+8c/Eh+nSWef286EqBLqOR+uKGQALZVYOy3fRdu9og6Qtp1ZMGFnshAYW+9RBvjjXjLxwrQFpNGpaJGVKqlve5JQXotGuG6Hgp5EHKiJMnFfZJF3rttYT6pBNH77bSvJ4cmerTcptisiQHShMKYZbR5H93ykTa72lYzn+cPSNkVQyIEyMZpbi9f2iCRO8lGkYU2dzT7qR5tY8TwyGIbj2rRSrAAnOA0x8qL+zQ8Vc8BKoTgt1HsTOyIN4Ev6jCS4VbczpF5eHDXcXL0nMpDegQ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:388::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 08:18:47 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::3128:22f2:78db:a20b]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::3128:22f2:78db:a20b%5]) with mapi id 15.20.5924.011; Mon, 19 Dec 2022
 08:18:47 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "'Gerasymenko, Anatolii'" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Handle LLDP MIB
 Pending change
Thread-Index: AQHYt7IrL2iUIB/EIkyEQ5T9jtMOr651kA+A
Date: Mon, 19 Dec 2022 08:18:47 +0000
Message-ID: <BN9PR11MB535450BF66376AEC592A33A380E59@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
 <20220824120728.1384453-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220824120728.1384453-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|DM4PR11MB5501:EE_
x-ms-office365-filtering-correlation-id: 0a5ad2bf-d463-4667-a1c1-08dae199a72f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 134yD/tEpu+5mbM0lOhW5K+OMTf0Ig3wmFdlNzp+1ew0gzV8aecObFE/MqXfz275Q8F+B1WAvLwvVmEn+wsXWl8IlDRVyNVMG5icAF1pmMyVJwmZWMAZNxuJjM9AbAdXmsTgV+OlUtwOuCfyhBpHVbTsik2AzM5oAlje58k5qxMjlZTapKY3X2g0CT/6tz9grNnQonYg2h/+lANLVH4MolIUZf0Nsce+zHd3hUboW8c4wTehQWXI23M8tG+SFa5b9I+sflyS/fhIeSviHoRQde9SPhOAxDUWgJGjsdW/hpaFfBNR3Dt3f4d6e+nbY5xhP5aQRhnCkhxs7q/Vu69TTQYmMuZK6EqXUv+wdH/MfQ9lTBBbNiViBWOrL5ClI1+X64kPl2Ri9TcdXyiGV53ap/ApcenIhSbgHjBokbk+blK7TNDGWn8fSh/JQNmhDwoGLmUaklEINSpiq8aVHtI4h466tmTeDv+/IW4ThYxmb0im+ZZa8XaWNyuoFShP7AZksnJ0s4dmyWg+A1eR3Rt4/ryqNgihMclz3OLoZK+hBChXR//5AqJFxRJe3mgNswB2mThd2WgK7YfzAnZ4Nt4Crri3qrMW2sGsg7uRqucyF4OSD1E3A2MP0cyjqSKuQHgfW1gXQ4AAD5Ijqw3XZ+C6CYYz5pWb85WS1vsVrSqQ77hPeCMeZqwRnDtsfOjjUsGqql5m+HhOW+jcKNrcIFV7ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(136003)(39860400002)(396003)(451199015)(8676002)(5660300002)(110136005)(52536014)(76116006)(66556008)(66946007)(66446008)(2906002)(64756008)(66476007)(71200400001)(478600001)(6506007)(9686003)(186003)(26005)(41300700001)(7696005)(53546011)(86362001)(55016003)(83380400001)(82960400001)(38070700005)(8936002)(316002)(38100700002)(33656002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RYDbrdTNiOr45+6zJZAnnfvjDR3w3A31WuvhDg7nFIM8tJhM5rjJUihCd4is?=
 =?us-ascii?Q?+Lj9/obHcuhIzbmso/JvSflnrrD1wPLl1smw9TOi2v4OeIzWSAQFIudKXkDp?=
 =?us-ascii?Q?DmodRMz89ZAOmCHi9tSzLLgM/7mjF54gG5eBDYcfgWmZ4dmb9483Ae7R2sWc?=
 =?us-ascii?Q?mRK5Wa6JWWJr3yDoJHzHvYWeSe1nwLrAn2aE6OceoSAFJI0es2tF7k2v767I?=
 =?us-ascii?Q?lh5byWK8z7XiXKZxfgoSLPaoTtSWfDturk6VEGvnZOrpmSuxU6PA0ZDegl+t?=
 =?us-ascii?Q?aDsQbCa3R7wgWw07eVj2ERLHM/9RfSvrT94ZsY7kTfxLtqoIHy9uzi9v9pnZ?=
 =?us-ascii?Q?fY51eQmNzjgZNsgFrUAtqCugd4ej+6ZjarWrPRGvsUqOINu58wUiNAkAaMr0?=
 =?us-ascii?Q?VOcp5hAD8Z9BkmZdLJcbEDwLFY+f8Og5lLhR9KDCRLYPSdwlR17OrJyxohMi?=
 =?us-ascii?Q?jvB1t3rQ0ebkGnCsUd6GVKd45Fxc0opiCqG+S7i3sN/AQLIezSaPKGs4Ufu2?=
 =?us-ascii?Q?exrt8d/6xuZwJ4I+GXEOFMV0sshR7d/fUarnC9tSiEyMptC+6AZptIKY5FkK?=
 =?us-ascii?Q?hrFnB/nYjmYwXxEFPWt3kYXqgaRBWo8YdoDpmZdGKqELpExwxzHCrcy+kzsw?=
 =?us-ascii?Q?OaKQPu75/033LIyBHDcsHkR+8h794s4ZK4rr4EaHcHfQ1JkWydYiOo4ssDXQ?=
 =?us-ascii?Q?KcsINRISyq4zfq64/X9UhyNrmOxQIiAU8Zy/eBT2+gwXdYJe1BZ9sZl7zl/l?=
 =?us-ascii?Q?BwLcNb19+NZF/ux4/eDmCiyR5WMenzyhGrTCQbE9ovXvlYjDCstUYizUWMP4?=
 =?us-ascii?Q?5y64IZ9MJOIlhO9ZJ7Ez14NgWZkSxwjmHFESxAivOeKdBHds0Y60y6bh1aIm?=
 =?us-ascii?Q?tBW2RAlGZpbQhQINCwc0X7CJdbYu53N61cjcCSorGUi/wrGhFT1TVghN3QEg?=
 =?us-ascii?Q?uV3fk84OETApM0U4j7ijDPmSYWoQWoCozLtnJsyc6dF5z+0QSO/7geNRsKSP?=
 =?us-ascii?Q?MpoiPOBt+kwgP539tBP79d+/Okh84WumfIGEmUVyIBB2R5hdpHDvF4lJnl1k?=
 =?us-ascii?Q?7KL+7o80vfN7BxjDS1X3Otn9ExQff/bqQ/gO9m1IDsmusqKUz6t9P06oapiN?=
 =?us-ascii?Q?PonWLE1jZv7nbX9qHw5xLXMbevH1N6khGSzb9MNX07CDVl6DG22pXKC0rccs?=
 =?us-ascii?Q?XcYkapVUd4lEQcrj91gLrZ7gM9DWcfWWmT6HuhvsHf3K6o2lcpzzw44AbfGt?=
 =?us-ascii?Q?5G8bTXHw7e3fu8bQcfLUEStwZDKTXTEpQjMFkW7rG/zynStNkfuk8tB/Ka4u?=
 =?us-ascii?Q?2xySOPiLspAZfCDrvPcfgQ449372691xIZ6YvLtEcByvQyQJ0BTcW8MN5PEU?=
 =?us-ascii?Q?nkNTbz+G/M60dWcvFtvD288B1JlqlD/AOp+ZMAa7rsPzkEev1A1y7V0DBfkR?=
 =?us-ascii?Q?dYLdYzV4ezt/wjpaGwIyEzbNN1LFYD0wPyOfiMgCVibq/VRyRs4+Qrlc4hBi?=
 =?us-ascii?Q?VMO667TfUBqyOEUcSlq2bScUYYANOH/hgJzTnIVvh+qt/ZPeumUZmWZe/Uay?=
 =?us-ascii?Q?1F4VfgCAnHrXpgXaguoLA8m0qsV33IIq6ejeXJUIowl/uE4lUPGWJs28mXjI?=
 =?us-ascii?Q?SQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5ad2bf-d463-4667-a1c1-08dae199a72f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 08:18:47.7039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KAoVhNhEumjotNRk6f/3B84uRIQ/4x07xz7FpWo//iVho9/4qa3b5CHC1aIkgsvSVwA+JPa23QnhZpi2dbkrbWKJVpLVQujKAWfLfGuwnCs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5501
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 19 Dec 2022 16:34:17 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671437931; x=1702973931;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MIa2eNSctUCxK7MjEH/wCxPWcsXlf9mRqI4RjGosv4U=;
 b=OO+jO6NU3w9snjurasUd4TUeicFky+VemJ6OMcIb+FeVIAv83d8YIQW0
 yTouA64iGVQOyyd7EYR3dUkgDtPVTehj0DU3Gn/i4ylx0NrLwrjDtmCqk
 q3D3yBqYqMzu/vsoFVZR5Y3YRJVCw2LT7g/JXAKxYYPaciA+AYDGmJ7w5
 sI4Y6GbeNHx6BQVQZxnrP9wgw72m4T2p2lg7m0dFBSXfc6ukLwJHswgeN
 RxaWXd/smCMbh8g0uZT8aH6cGdo2gwil6ilfYACvtTPaEpn98OoXvp8Fk
 zbDPfGLe2dl3mWGX2dEJYtTnr42zyxhqPoj/b+bXRr99AuxY3Eoo1Sd5y
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OO+jO6NU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Handle LLDP MIB
 Pending change
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Gerasymenko, Anatolii
> Sent: Wednesday, August 24, 2022 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] ice: Handle LLDP MIB Pending change
>
> If the number of Traffic Classes (TC) is decreased, the FW will no longer remove TC nodes, but will send a pending change notification. This will allow RDMA to destroy corresponding Control QP markers. After RDMA finishes outstanding operations, the ice driver will send an execute MIB Pending change admin queue command to FW to finish DCB configuration change.
>
> The FW will buffer all incoming Pending changes, so there can be only one active Pending change.
>
> RDMA driver guarantees to remove Control QP markers within 5000 ms.
> Hence, LLDP response timeout txTTL (default 30 sec) will be met.
>
> In the case of a Pending change, LLDP MIB Change Event (opcode 0x0A01) will contain the whole new MIB. But Get LLDP MIB (opcode 0x0A00) AQ call would still return an old MIB, as the Pending change hasn't been applied yet.
> Add ice_get_dcb_cfg_from_mib_change() function to retrieve DCBX config from LLDP MIB Change Event's buffer for Pending changes.
>
> Co-developed-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
> v2: Remove inline hint for ice_dcb_is_mib_change_pending()
> v3: Handle only local LLDP MIB Pending change
> v4: Use the old way to get MIB content for non-Pending changes, because
>	the MIB Change event will not always contain a correct MIB.
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c     | 36 +++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 68 +++++++++++++++-----
>  3 files changed, 91 insertions(+), 15 deletions(-)
>
Tested-by: Arpana Arland < arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
