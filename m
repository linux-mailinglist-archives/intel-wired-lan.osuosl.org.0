Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1081833271
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jan 2024 03:33:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBCCA404D8;
	Sat, 20 Jan 2024 02:33:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBCCA404D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705717993;
	bh=YOgWDOLur9oEHQIV3N4f7j+MpWx8bdp+zP3XQB5eqIA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SOdOKSfkom8bO5Biq7yWRoLJYZgrZom8+ekwB9SFT57fIZvnmz3n2CKZKQ+xOW2nW
	 LmfIWxSIOhmffX1d5tU8FtaocWkmAnVrxqBmwslpaZ0OE6dln/SxOT7YAwAIbPdoqq
	 ISJJLH46AO0rhDj6klShhNfmYFXUJeDyJnqo2qpprsnkxNVBwSZ5mZkFgk8TXmVolX
	 uoYlI8Oe83FOkMzsVEGXGlwUNwmXye53b9xHnCCBm0TN21wr105fr5R6DtBmvDVC/g
	 uZZtv3V0RHJrMYbSMyVZ2ZJAwXESMWj8k0ioU6Ihnkf101oE6T94H1RT0fl8bJyTft
	 pl/ZuLBlGA5LA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6pu04MUKEjg; Sat, 20 Jan 2024 02:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B55140132;
	Sat, 20 Jan 2024 02:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B55140132
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 672A11BF576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 02:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32CEC60EFD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 02:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32CEC60EFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 954LKAq04ynB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jan 2024 02:33:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1611B60EF9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jan 2024 02:33:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1611B60EF9
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="404670629"
X-IronPort-AV: E=Sophos;i="6.05,206,1701158400"; d="scan'208";a="404670629"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 18:33:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10957"; a="1032106389"
X-IronPort-AV: E=Sophos;i="6.05,206,1701158400"; d="scan'208";a="1032106389"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2024 18:33:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Jan 2024 18:33:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Jan 2024 18:33:02 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Jan 2024 18:33:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PxQD4mPzS+CyCsZMLTnuIOjUDnxteGA/xjzYQ3rCP2+eM5Gfmk0TlAQuYQHGhphTe9zItKEHUQV3W4Dm1HeuxknhBqJ9D/RjgQCVGy5UC9hDLZTqmjdrBrBWFVakKItmwXU8wTf9cGy5ZIIxj/T8i9kVgFj+zL2Zc8jZlnaOmQbSu5Y7NqBqGT5CTCmvEOyWim9vD2ev88NilQSmQjUHeLjGejSr5XuO96dzJVut0NUJv/GTav1JReRWRvdNp9RMtjAUgC/zyhdEtOdGTVa5P33zqdYnO1y3HVhtANV3Y846yeyo/KBFbxpPCSrTbLM8ldwMmSTQYPhASCj1QqM+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOgWDOLur9oEHQIV3N4f7j+MpWx8bdp+zP3XQB5eqIA=;
 b=ICnFtE+gjVEcTuK5bETU6dyC1W/3TUy4GRjUdJlV/tZUn9URsiCHd+QoM35bgpCue9oGmEg3Mny5ZyIycF/4kmO3uCP7+GrrA4oEHUG4BoYzH4TxPTj5ySyBU29GWs0EOF2Y+EraQf4ZsNAF35H5VBoCZT694JE9DghVBQBJJQ/pjiJKzDIkLxQR6dzEEIxvMnNzAwO+EQTgD5L891uj8/v89Fh/L1zbplQ99qUiks0RJNdFdzAU7/yh+a5uOnH8mZgHl/X3VO11JLIZJ8CnztGZkitNUyqEB8ynZwQhCptR9Wt3roZmhoes7q0LHuLQY3A575pee2Kzt9mzunQNew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by PH0PR11MB4952.namprd11.prod.outlook.com (2603:10b6:510:40::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.26; Sat, 20 Jan
 2024 02:32:58 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::2333:81d6:ae67:6542]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::2333:81d6:ae67:6542%7]) with mapi id 15.20.7202.024; Sat, 20 Jan 2024
 02:32:58 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v3] idpf: avoid compiler padding in
 virtchnl2_ptype struct
Thread-Index: AQHaQpvrSib07Bt1ukmiW6qR2+VomrDhyxNw
Date: Sat, 20 Jan 2024 02:32:58 +0000
Message-ID: <MW4PR11MB5911240C4556BAEE92867890BA772@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240109013229.773552-1-pavan.kumar.linga@intel.com>
In-Reply-To: <20240109013229.773552-1-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|PH0PR11MB4952:EE_
x-ms-office365-filtering-correlation-id: a586531e-1319-4504-b162-08dc19601d8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XvttGbjqMP8Jr7Gdq+bTRxQkuqNXaWttWisO/bJNw0p0Hrz7dDpaD1OVvK4LNW+N4egdq5CY7HFACKub1PltQr+g3D9p0cvbTpzUmCYmzgesx6oKZQ8lD4S/0PDbcF0+X6DO65Gk81D7ChMoMbUba4FVFnPhiqtr1/4+5UvZrE5EDzVBIizrnd2a6DCnsboKBbVvNV4FVZMRAA+9HlP27gIfvZwkcsEIdzrP2ueNM9VGa2gH4x6pZf7Uwft+wDsLsLAkiFrDPAHlUnwpq0pqEwYro6Zu+IEB0RB8TKQzJzE+5IuMShcc9Gaj2ZE6p65sdJFuQZwtNw2RlMjA9/5y1lTr/6U0hK/Aqvukx2f/5FwvNpFCw4fZB8AcB6lK2j63ooyl9ljCs4MUddMrriBhmg++hK02rdftprsyZK7aLbEly7m6d3zppPTUp1I8oRmqaLpfE7cww4WbR33ZkKxusqoZ1ULrtokE3c3gL9SaOQOvSf4L6bO1JgiDB7tjrkNWmCxN2o9AoNC4qwcf1OWIie+kRrHm/OLdCpxTxdpkEAuAP5kSDG2J9obGfUttfZhHg6fxeHdnm81SxC/XNM/Fk2asUDRDTLpZxBqvkpiGSbo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(396003)(366004)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(26005)(107886003)(7696005)(6506007)(71200400001)(53546011)(9686003)(5660300002)(83380400001)(2906002)(8936002)(52536014)(4326008)(66946007)(66556008)(76116006)(966005)(110136005)(54906003)(66446008)(8676002)(66476007)(316002)(64756008)(478600001)(41300700001)(82960400001)(33656002)(38100700002)(122000001)(86362001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5Latl603NuEnHu0c+MyBlA9HrSaXJ7zHS9Ju8faXu61A78mM2BPP3N6qgGr/?=
 =?us-ascii?Q?zhbpv0d8/u/7SP81W8RBZWeDFz/fsv9o4hT2bTtB0+i0L0eBKOq+mPbLnZea?=
 =?us-ascii?Q?/Y3EMS6o3OMgCBenQg/9qpqR3zOWM5r4OI4FOLDyCmfc8Ok7q/GehV5jvExH?=
 =?us-ascii?Q?C7LvPlK2zPJfp4hZK7H6zuebl28G5E+8LODJWUXWgUOdfQ2KuxypQ8KNtZa+?=
 =?us-ascii?Q?Y15sIs+UY8JR6DrP1xRoEq062UflZbNawD3M7ZWqyd5KxN/llAY0KmyNtUPM?=
 =?us-ascii?Q?iCIMQKabueXJ+37tSTJInFA2J5I7VOg9LES42jYc2VsX9A+OpuWwRTmk5Nt6?=
 =?us-ascii?Q?STuAT1Mt/ZLxDMKxA+iX+IfRizMTcOj4My3XW2aPhl5z7MxCuJw0PR8esgpI?=
 =?us-ascii?Q?DADNzoQPdPqL1vf5+aL391NCX4F7L9X7VpTA4fbbinhOix8v0G6RGgBTjdga?=
 =?us-ascii?Q?SGJGVIFnfMLUUbReXh1qYIH6+ynAUmqhdwWOs/CAXbDn1Fuu3+bTS3Mdr9pl?=
 =?us-ascii?Q?MgkzGJXHhSgfNUxh1jFicAjEyRxGqseMq1iINKF4N8jFtzfxaupjgxgfCM51?=
 =?us-ascii?Q?RbOau37Ut3AjmyxnyUSYNNn7CFNf7q3grCf6CHxEAtx7Qd6RoEEtEQoCY1w+?=
 =?us-ascii?Q?oY0T3vvI0bo/meaJm5pf4VdCjK2WzqbwgZ0Nd6r/jM2kpiV+cWbrxMZK+YWl?=
 =?us-ascii?Q?n5lcFaECdOg6T7ECwPz8A+5E+/uhZwyOlz8hnGLt4RAyvJsI+9IS4JuGPzo7?=
 =?us-ascii?Q?i891jMXiL/LTaA6KSJex/RV9PwS4BSuNPfKgOJ5XYiFNZBZzFWWXj9kz80HF?=
 =?us-ascii?Q?JpVb6oCeK9t5mK6L4YmqzCuhGHL00NxT82vZ0jRnRxZk6ZMnoFDzQTOcbpZ4?=
 =?us-ascii?Q?4RuEUulFoCcgrv0dPbs7L03Omd1K+fzKbknE+rXaevqV6ImvnIrWvnSF1FTk?=
 =?us-ascii?Q?csZ9yFxqdtpnAe6kZwBQduhQWrA1KYSggw1lEbrY5kUeGfpNR1Zqt3r5T3FA?=
 =?us-ascii?Q?4h7hLv4gn6bhs/URKWU5He7Q4eSkCZ4Y8p5Kz/n1IocOW+f0R8XGH/mXf/6r?=
 =?us-ascii?Q?d+Gr6qbC5DrGE+MdEHk6bGak+iJ146QgfLFQGaILkYPINLqiui7pd6d4y+jQ?=
 =?us-ascii?Q?SCbYdODyyxGjHo9tyQZ9/4shjD19a18hA6bqb8AEgH16Sh/GfLKQQwRCLfiQ?=
 =?us-ascii?Q?wgrdJs2lt87MxZh4TOQCcdx7jh/1LijZjj4MZP0ebm7wlGZpvFoLjAmgi1kx?=
 =?us-ascii?Q?SrYBJrE+VqO4xMF+tn7BRVEl4T/amOM3ewSKSjjFXOOeNLwLzS4WNnZlm3+8?=
 =?us-ascii?Q?yJeH3l5oGKc6jPF5Aodj1bSDCF+PFdyT5wbGRH0eQvFC54fjNN6tx2O6Hprw?=
 =?us-ascii?Q?C2zQIPtXlNH58H7itE0vw6kTqt7mEQMlJ2o+FfU9/rFHhAtZnpycTbqNI0RH?=
 =?us-ascii?Q?Ia0QhCg9nSYYrD/pPa23cimi/AFJ6JElxL1QOoWy4B9LICmv5lsODq2hNwf9?=
 =?us-ascii?Q?MjMWlxK4JqhAVpQnzTTMTtfcaLPBY+q1KShXfzzkUyaYRKJklHDPMyi5lcTo?=
 =?us-ascii?Q?SF7+ig3KIipSm8zOzBOtuFfdB6AhgKUuNKpYLC2e5r7Y/wY+cwvGQYdPcAc4?=
 =?us-ascii?Q?Mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a586531e-1319-4504-b162-08dc19601d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2024 02:32:58.2540 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CPrIbr5eCnofTTuUChIMwmvICTTUtJXCSoTwvMNwa6t0jcQscpNreZ787EqOqgLKFLQ2bh/d90Yi+X20pSCdqcpTguUqSs+A4HqXs3Humi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4952
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705717986; x=1737253986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i68YdzhvV/GeTwpeC071jhqsRstIIcsHj0l4Y7MjnB0=;
 b=ALGiLgVkZkdi0+6P7gfUjFCXtPXusop1RxynO1RJyJpEMk6tVn1UrvPt
 vt4NjFygEH6WMZGNU87JMT6ho1neM8t5ERJotDNGJ2OiHQ0oKD1UysIvZ
 bOY6ZZWrP1sekD3kIAbn46GjKCP2Czq3t/THa0tXQsEVDJf2l5PClk1h3
 bxp3Y5v4jgO16P+0rH8GpsjCQIgoOBtGkeMdYWOUyuaIsqm1y7CDTXpUY
 OJXTs8lPufoCTOiGx31Y+mnF0axhEWV00XQhWmQvwTWNOBGZQYWfFEKe8
 zC/FZ3rH9aTrHJBJy8hO2gI3f28A3tvuTNOki0eQpT8vwSyBDhd+Ku3uX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ALGiLgVk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] idpf: avoid compiler
 padding in virtchnl2_ptype struct
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Tantilov,
 Emil S" <emil.s.tantilov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "horms@kernel.org" <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Sent: Monday, January 8, 2024 5:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; pmenzel@molgen.mpg.de; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; horms@kernel.org; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>; lkp <lkp@intel.com>
> Subject: [PATCH iwl-net v3] idpf: avoid compiler padding in virtchnl2_pty=
pe
> struct
>=20
> In the arm random config file, kconfig option 'CONFIG_AEABI' is
> disabled which results in adding the compiler flag '-mabi=3Dapcs-gnu'.
> This causes the compiler to add padding in virtchnl2_ptype
> structure to align it to 8 bytes, resulting in the following
> size check failure:
>=20
> include/linux/build_bug.h:78:41: error: static assertion failed: "(6) =3D=
=3D
> sizeof(struct virtchnl2_ptype)"
>       78 | #define __static_assert(expr, msg, ...) _Static_assert(expr, m=
sg)
>          |                                         ^~~~~~~~~~~~~~
> include/linux/build_bug.h:77:34: note: in expansion of macro '__static_as=
sert'
>       77 | #define static_assert(expr, ...) __static_assert(expr, ##__VA_=
ARGS__,
> #expr)
>          |                                  ^~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/idpf/virtchnl2.h:26:9: note: in expansion of m=
acro
> 'static_assert'
>       26 |         static_assert((n) =3D=3D sizeof(struct X))
>          |         ^~~~~~~~~~~~~
> drivers/net/ethernet/intel/idpf/virtchnl2.h:982:1: note: in expansion of
> macro 'VIRTCHNL2_CHECK_STRUCT_LEN'
>      982 | VIRTCHNL2_CHECK_STRUCT_LEN(6, virtchnl2_ptype);
>          | ^~~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Avoid the compiler padding by using "__packed" structure
> attribute for the virtchnl2_ptype struct. Also align the
> structure by using "__aligned(2)" for better code optimization.
>=20
> Fixes: 0d7502a9b4a7 ("virtchnl: add virtchnl version 2 ops")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202312220250.ufEm8doQ-
> lkp@intel.com
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
>=20
> ---
> v3:
>  - add "__aligned(2)" structure attribute for better code optimization
>=20
> v2:
>  - add the kconfig option causing the compile failure to the commit messa=
ge
> ---
>  drivers/net/ethernet/intel/idpf/virtchnl2.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 8dc83788972..4a3c4454d25 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
