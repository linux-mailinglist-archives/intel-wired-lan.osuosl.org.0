Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52F57B044
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 07:17:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2187360BDF;
	Wed, 20 Jul 2022 05:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2187360BDF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658294271;
	bh=kEh1bPlObn2j0/9Gbx3sQz+3VR8XW1P7TV2xoPJJ8pM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9cmYt4UH8QGJs7Bi7rept+aN8apG/F060/wigkEVIXyQ+T007c4+vLayNbOc4WUmv
	 VlEU6JJoCpMyi8+jpUDhaIptCM9/rTy6vpplqV9M0E/sOF5X8SXfKQCJmDGOAgz9XR
	 RC8TAYEsbE1JxrxTRRcxQz4dA9aB6tpkoxj10b1BrTWpcry7JLyP20lc46JtngHVhU
	 lItayXibCMH4FiZX6bcDFDuchOdkq6AWAeX/+xFSnEHlVfb+7Wm6oMkzBffxb4NB14
	 z3YhIMDwM7Fm3pcEDeK7q4Zz9865P7QLXiPCdUaAPjVTox1Q2hmrj85wisgRtTGdNp
	 HOrD7oHRDnJVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-Z3SYcmUeZ8; Wed, 20 Jul 2022 05:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01C1060C23;
	Wed, 20 Jul 2022 05:17:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01C1060C23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 451261BF957
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 149F482446
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:17:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 149F482446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id povxQr_Y_rrU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 05:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADEF8824B4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ADEF8824B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 05:17:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="287427957"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="287427957"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 22:17:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="700735160"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jul 2022 22:17:41 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 22:17:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 19 Jul 2022 22:17:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 22:17:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CM/0LAh+80rbZmDTmIwXsVRE73VtTEEkI1kQQOL9cFakW9fYQEnf2Zt1/S2CtqOh/1C/qwpfhY/Ix7Kc1/VUxUh04S7j1IK44uSeeIjGAbJjrsNSzVLIwL3tnGy3X4NR6Xo2Jf3gRJYQwgbFKy20VUOe0wwJvSlN8sLXxUN4RrcHXQYK+RpXsb3YW2H88N0aoy3OUONgQhbo/gsiBxK7UnW1rlnXquy8bUJnC+3PfHBrarVMwz1ea8anr3M2h4BgSqxFNy8suzNgJBBvSTDWZkJ7y0JwkRxNGgGppSHvwytRcsJjj5aOU8IhN6MLj4H9maAT1hLTGV3Kr2UWH7Iyyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gbY8G/roAKrcG2HGg97pQ8URJOKhQ+JBd3XZCGlUNKU=;
 b=jqLfnLNZYjhnWJ76oCrXoQ8DPfLwSII3Ipm9jq+u4FFFZvVG83IqgapUqafliwjzfUUFoE7dKcBD08OScSzcLyvP1dGW2V29c0fh5vLKH5qQSHUQVux8SYvQ66uNcHtmyxpy5LUYf4wkje53Z2sqNg+xaRDgnzTyDHjJZuc8DzEdzbOPWOgmQYZo3xG4fnwMSRYA68SNrPioKioLD/ln9rWJfKWQAeP7GWzKknYUlPEZB/Wh0rGosvb+eqQSoplOfML4bDUi+FIYqqdGpM/QgaAlQKgLszY6QcH3+bdmfE3HY7Kym+Yz8ThIfP0tCjTTNpG7UYpuEfIj/hhekq/c+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by CH2PR11MB4502.namprd11.prod.outlook.com (2603:10b6:610:43::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.19; Wed, 20 Jul
 2022 05:17:38 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::5c14:c947:2135:79a7%3]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 05:17:37 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Gerasymenko,
 Anatolii" <anatolii.gerasymenko@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/2] ice: Implement control of
 FCS/CRC stripping
Thread-Index: AQHYitw1+JZZkEg5UkKUewHGEozW761kpoWAgCIxwiA=
Date: Wed, 20 Jul 2022 05:17:37 +0000
Message-ID: <CO1PR11MB5028325A3D142409E4CF54F7A08E9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20220628104403.4246-1-anatolii.gerasymenko@intel.com>
 <YrrfCQCG5sndNVvN@boxer>
In-Reply-To: <YrrfCQCG5sndNVvN@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e7057b9-1d4f-44e5-c9c9-08da6a0f2972
x-ms-traffictypediagnostic: CH2PR11MB4502:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z6LWHDO+WT0LJ8TMtlqzyV/yDwqUXrJHlonWEAndH/wFV9g4OaNGMXAk/2iGvxex0Gm7JTPOozIP+QrXmjISeI0sL7cCLPzYVfyE0tUdWRWIat9ACP5k6zAT/VLdZEXfmwbwslkmvz+fu6V3ca4Rgw08ZhWTwnW0NKozu/91rmsv5VrO9cUpVriWrWu9EHZFBZjLzlU8KDvErVaGk4r8GljsPxctBSAUsfsSlWzfp8w2mDUupMyi5EbiXu0/KI2mnKz48DeuDSb720gDj9CYZa7EwIku+EsuJRbbMD306VkdK8gD1nUqwq9Db2X6UI2aUmJuaKzTze51NW1iE9NGY11ZUbINuGFVEUeL+/X8HIS/piaSuWHdPx0lUyzpcXaRYuRZBy5edzSah0BF0pgdMG/V42Euyd3LI+Fg1pTk6CZhhxmQRgxePAcuv+cJOtAG6J4GaLxy4fZwNZZAEipuu115/dXjGzu983eNN52bkBSIb+nhtdUWBnWc/aCkSnVPa7d7hJ06RoOIiNonthWMP/MIqYEIUl6Zov/eCafG61hKX1KwXNhnSUH13vNpUlBJVL70Ou/jYGk/VPyFnFjfMg4byZB3MzaymCsJ4CooQ9mQ+oI77KKUGmD6y7MkaAz5MK97u57EAIw4GA6+fWadbt7nN3+ZL0i3PTYJvCvL6YJYyHoqB7CJDiw+HY20r/x0G7KuTUeobb82hhFpcfcLszqxq2Lk1KNpfXZRKqc9GBza/qfyLEZBofOuSmwmvd2Z9PvMdqdQRCupFXhV0moKCZnjBXbH3eCtpmkKnXfOUBeJlejpTsPdExUScwB+2NVwvw2rCXvpO+WQdkxtAwcF21CfVywmydwPWpnuEMNP6e4QjsSVyNVY9Kjzuy72Z4zL/edXErMliDoqI1HB5K4a5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(396003)(346002)(316002)(122000001)(7696005)(9686003)(83380400001)(110136005)(41300700001)(966005)(54906003)(2906002)(6636002)(26005)(33656002)(71200400001)(6506007)(86362001)(38100700002)(66946007)(52536014)(186003)(38070700005)(82960400001)(66446008)(53546011)(4326008)(64756008)(66476007)(8676002)(55016003)(8936002)(478600001)(5660300002)(107886003)(66556008)(76116006)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B423RdL2o4Ie4qRSEyny13aFccShK3G+s8te1qeRZ6OBfisJ0b3cOUR25KQb?=
 =?us-ascii?Q?qbIUkAgnYuw36qAUhkB7HFb/mA7DNK/Y6WGDGQZJLcRvkSR8rd2koch2yThw?=
 =?us-ascii?Q?D5aBKoJi3huJ5anS+zh4FCgeSH6xZEHeTBatT2Y35P7ImBh3yOoy+/8qhBKa?=
 =?us-ascii?Q?zGoA1xbMqmob4ANKlC9ElWaWBJWFPs6Eh3SX//X6qfsm1N1ld9xCSNNrt4gI?=
 =?us-ascii?Q?XuiNNhiw9a+J0M5hvpxmOIW9A2v7RT/kw3WEo8InfV4XQMtbm+msrCgrP8F8?=
 =?us-ascii?Q?rIsM/RDYiio7cYnXcSjjBm3DsjUBROWhisZ5osseIlvVq8tf2fV8uWXvPFR1?=
 =?us-ascii?Q?yefx6nD3OMzOsv5Gg6CqlrZrBfUOnmQKkeDDhQLTl/lhcnjWB52YEQsQTGcl?=
 =?us-ascii?Q?IFPioGaviQtyTUrTPN8zuZCJmXgo7F7fOSCCqLQHeADQPLc1ap15fIcvXgFi?=
 =?us-ascii?Q?KNYqT4KNaGFs4qa8rbhT85uoBvaIFTUzV40AcGO2hsNJxIfcEwQHrlvXGOhe?=
 =?us-ascii?Q?hwoEFeAXWFzIftffNuI0cRHv/ATRWRLB+athaiRYIti3oBy+4oihVRkMKU2J?=
 =?us-ascii?Q?t7/fPgagplXXiHdvQFM1YRXmvTmkBhoKr52//6PdNAME/CKbik1JixaMwOnA?=
 =?us-ascii?Q?Lp6YatU4gsh0OK/3HKLFNUSbACMO2pZwE7yZRJsYJv+99d8MmwQUTeY8cKM5?=
 =?us-ascii?Q?L6bdZeAA4XFivh8KqbJeufYDJGNWXLWZzFnR9VA3ZZxYDnoa7b8k27bGUGPu?=
 =?us-ascii?Q?qlYLf1DdOcimVsNsiEzCKhbREaf3uT1PDeEAleqYcCgK9N4VlgHigU7vIArP?=
 =?us-ascii?Q?8DQsV7d982KdKPAPe7UvI+WZBuJyPVtAi73YGzInRV4ffff5p4KjG8tM3z5z?=
 =?us-ascii?Q?Rpmw2bjWQQkaaOnoBVCB8N6VLy7m59mRQaaT6th2MfsWdWjMgZN81JfK7f75?=
 =?us-ascii?Q?qEIDZurYhhbOGe7URn+vpU6qQFoVTm0a5+BmA0z8tlo/4YXZMRq0DAEl2gBN?=
 =?us-ascii?Q?3v9DnXFw1DJfS4CbZeAxdikxncsKsujWVI+bYRd384GK/2A97XdMFcxMlXoF?=
 =?us-ascii?Q?hKtAI7lBqm5zfM1qWXD0/MpxHnsA0yY08zswLbVkvyoKQvgze7aeTG9ZdRL1?=
 =?us-ascii?Q?ejho8+ayVtYR8RMfdU+y+U+3qY8ISYXfCrehSl/NVP5l16iZVnXYA92m81qy?=
 =?us-ascii?Q?zwz/3rf3TIcHiczI9JGsMPdrYyhR8haZE88M/Sbww7q50OL6tpudcygzJC+l?=
 =?us-ascii?Q?iPUnlH6wfOOMvkg2U2c9lzx2mCrOROyRNDlpQDjVNbLy9sisaUo+OfBgEbG0?=
 =?us-ascii?Q?xItXxgDyCbpdKoffBMqHry184CDwbLl4XLxL/KLpmxy582VpBGTUBE++ffmO?=
 =?us-ascii?Q?adzVQ8AzayuQ2BcsFrGJIt1ujDfjSlxbJnLtDKj2yxH704y8HJZuhB3Sb5aQ?=
 =?us-ascii?Q?AETUm1YYqkbcH+1JCOcYPay4XnOiSL8q7BYVnBaEZXWD3JeZhDRkr+YxXRk0?=
 =?us-ascii?Q?G0ZKxjyfxPeM33o8tqAGI+9wyvtNLo2DWPotgGyLA3YuLClTkMIP1XNJ/rK1?=
 =?us-ascii?Q?quGuy9pjMZj2R/XqKk+c+c1d3ULwtLd3FMD64XiZMmd/q8LP4/zxYpDFt+JI?=
 =?us-ascii?Q?aQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e7057b9-1d4f-44e5-c9c9-08da6a0f2972
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 05:17:37.8476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kECFu6uFgfTIYxaA2p08SLYLoMJGCmKVqKxScpeea4ZzxXoop8KU5jGYUY74x21g/1+6so4vt5SjqxJZ3XCaXukraFb76Jm8IjX7wdDwfl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4502
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658294262; x=1689830262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lnMlOFNxv4hjArq3LB+2CbtVCuXoUuLIDNit2zJbWM0=;
 b=MDITCkDvCWCGfItzWrS4Ncc2Y0frkeb8m1rpeXPyvvIzA+7pqExhg96M
 RVjqi4Y03u4yipSV0LEqALrjXwVa9oIMfGeQnlDqvns0tapr4M1vc5jMt
 PVatt9H6stiRIhqkWsdwP6/ebQWrwplbAf7Zg86XCk1DLI40j80rxwvZ+
 WV7m/1KSOZg6+JB5/D9JWT3tH3TZ5XgK+ZRzIVMwFnbJ4sKzKvKty2AHX
 fVvQYylMGrQz8QZyhESVIHmPl2NkgSq6ZACZVob6yc9WhvyhCwYVqmZLL
 yxRWbi9BHUf8xG4RUKiGu8TDCtlneidDaRnC9KzrKjWDp7BO+jQevbIiT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MDITCkDv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Implement control
 of FCS/CRC stripping
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Fijalkowski
> Sent: Tuesday, June 28, 2022 3:59 AM
> To: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] ice: Implement control of FCS/CRC stripping
>
> On Tue, Jun 28, 2022 at 12:44:03PM +0200, Anatolii Gerasymenko wrote:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The driver can allow the user to configure whether the CRC aka the FCS 
> (Frame Check Sequence) is DMA'd to the host as part of the receive 
> buffer.  The driver usually wants this feature disabled so that the 
> hardware checks the FCS and strips it in order to save PCI bandwidth.
> 
> Control the reception of FCS to the host using the command:
> ethtool -K eth0 rx-fcs <on|off>
> 
> The default shown in ethtool -k eth0 | grep fcs; should be "off", as 
> the hardware will drop any frame with a bad checksum, and DMA of the 
> checksum is useless overhead especially for small packets.
> 
> Testing Hints:
> test the FCS/CRC arrives with received packets using tcpdump -nnpi 
> eth0 -xxxx and it should show crc data as the last 4 bytes of the 
> packet. Can also use wireshark to turn on CRC checking and check the 
> data is correct.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-Developed-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

> Sorry but NACK.
>
> Could you pick
> https://lore.kernel.org/bpf/20220616180609.905015-2-maciej.fijalkowski@intel.com/
>
> and base your code on top of that? I have specially pulled out the switch the 'changed' netdev features out of my loopback code so that we both can take a favor of it.
>
> Looks like you're going to be the first with landing the crc strip to the netdev as I'm lost in fixing some stuff in libbpf/af_xdp :p
>
> TBH the loopback toggle would also fit to your series:
> https://lore.kernel.org/bpf/20220616180609.905015-3-maciej.fijalkowski@intel.com/
>
> Thanks!
>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 21 +++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 48 ++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
>  7 files changed, 71 insertions(+), 11 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
