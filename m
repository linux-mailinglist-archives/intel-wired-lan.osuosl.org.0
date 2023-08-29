Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1BB78C105
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 11:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57D4E40CA7;
	Tue, 29 Aug 2023 09:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57D4E40CA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693300360;
	bh=XAJNYd2kcepLTn5Y0J9HVK8VVU5QPZC/KFedZdbRugA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b+loae7pYhzL9bVButgMHpqBWOWQU+YblL4O7x81TkXv63lZUa1cfECFToBHKw3zu
	 t8XFcw+pi06Z8ULrpUAz9NaKTwuQvPHeI60ZqSzU2vdl+31m8kR7rgyfSUpUsrriPR
	 FD1LphB6tyoiTViXH5K2kgIlbEk+DWOww3ZxMjvK7sRNTSGrTvVEPDdUSU+qgR1ifp
	 +RtUjyckcfuzkAZi333TFN0Ol2fSwR/UMyi7qy+EeZwSZCR5ZLhGw6ZDDV7ICDcpHC
	 USgWYl7cFJ2Yk0Y4u/8TfptOSqcoy+NPyeOAs6UhyyNzn/5qjPWNsnQsiQlrz5z1j+
	 X4Oa/FT/M389A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id azG4MVMe8-FW; Tue, 29 Aug 2023 09:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 317FF40C98;
	Tue, 29 Aug 2023 09:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 317FF40C98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CEFF1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 09:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63EDB60BDB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 09:12:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63EDB60BDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVLNiEnEYIla for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 09:12:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1175E60B35
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 09:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1175E60B35
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="441669962"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="441669962"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 02:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="1069381480"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="1069381480"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 29 Aug 2023 02:12:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 02:12:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 02:12:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 02:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XR/IN9aq1K38BP8GcP+01E8wnQOL+6bvyWruTVncgZD/z1tgp9seSU5oWAjFEIBslpB2Jp++xaDQR1CVAaEIURabq4qN3V9eJW2yVWnFJbpe39gUMZHcs2/UHhkJIswbEEc/OCJRDBJc0hPOGufCzIeo0PApib0wPZsUvK3yUkoNUtC+Sf8FTnQy0CindzCQqm7TUfgJbzdPhvZttwS8Da1n33D+EiZfKVI7pjGn34RhOEpx66MEV2L0ZgavjBc9ylhAfR+07SXtc+OTFQOmqmBcMe2CwA8kgSvYfDlr+vTAahDZyjb0VHau8hWqikvgICWophb2UCrIBIlRBV0awg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4lc9D85qJrKN3rNTvlUA5oFOX8bm9ME5zHhN4h5jG0=;
 b=Rb3hocSmtI8qgR94ksqZ3mvvAv6F4rMkSOXbqXL7aKyrxFvx6mBIkEfrMVbcQL18gAvNnRoRUaRZhOjr9o9UKYxLnpRHYujmuBvTbBTVIQZydYvQp8nklkM8hbRINv+DsQGJ8sBxgYRky7gxvp9igZ3xvIBqbV/AJ2QQaRpEW/stU8fqioWxepztbdMjrnNYDRn2+UAGOadR8XljI21GdbcOWrvoxQE0WfiGGCzmInKXEwP0gI2SCSdR83m9OO/YXtZeNTT6JTv6I1WLc5JO9c0piZzLztqlTQS/69K+FRcp9yMaJDgFDjZ36PA38GAd2iJ7z/MQjtbJbN2s7hWi0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 09:12:22 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::5842:74bc:4aaf:a4fb%7]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 09:12:22 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Ido Schimmel <idosch@idosch.org>
Thread-Topic: [PATCH iwl-next v2] ice: Disable Cage Max Power override
Thread-Index: AQHZ1qBBv7SVSOjez0eHlWI2L+3Nxa/6wcIAgAMXFgCAAydJcA==
Date: Tue, 29 Aug 2023 09:12:22 +0000
Message-ID: <MW4PR11MB57766C3B9C05C94F51630251FDE7A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
 <ZOsNhgd3ZxXEaEA5@shredder>
In-Reply-To: <ZOsNhgd3ZxXEaEA5@shredder>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|SJ0PR11MB5792:EE_
x-ms-office365-filtering-correlation-id: e01885d1-ed5a-44e3-744e-08dba8700d97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3b9lTHjE3OOg1vo1gBsxaNkNusbP05d0X1imxjzILA/ayCst+WyPMPWNF2vx3ugR6s6IXcjPB+w3QI7s2NmtsuqkhJzXR5fO5owOw5N2A1/0pvlOnsE7wDNn3R4FUXJcQ0Sjdf+TryfrZlBNqhoBQigCpilDJbCi+wxfgd3Ze6vjWOmuQAoeorP0s4iT2xORs97OK+7v6Oj5cggSXtlgl/0A5TKzGcnoDOiq43RYerCQN0cG1oSFk3Y6/qgVFEb9Trj5sIP3dbl11f0OOz7+iILotYrYxrxh/SVmLLmWduoJVRdCPWXMZfvJ35Onv/vrI6TOGBzb1D0Hqwdg8y+46ZOywtUzust2wyAZJRMXo/N2zATX33TVmZLXYUPyN/1VYA51l8vUa4baAkakxlik8tcyBdCinfEWtvK79cd9bbAL6EhEqkRMRay2BHHgngy3mPQtNoxWoAZ9Dlhhq0mwyfpK/ANtEHGDJdRzVFUqWtCOpWYnWGStxL5vry5WGp4iseZcQoQABubRZWAnECWz6x0kNe07nOk7RE2uX9paVgBkhS2/uJ/2jkhwJsxHU9oSyKwxcaw6dNMKx2b2LdmnvJc3zhHeWnK5Zf1ZWNXYXu+Kw7mYAg3ChqDWE1Nl2Hz9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199024)(1800799009)(186009)(7696005)(71200400001)(6506007)(86362001)(55016003)(82960400001)(38100700002)(33656002)(38070700005)(122000001)(26005)(2906002)(83380400001)(76116006)(9686003)(53546011)(478600001)(52536014)(8676002)(66946007)(66446008)(4326008)(5660300002)(64756008)(66476007)(66556008)(8936002)(316002)(6916009)(41300700001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UbCHpUxDUCEsq2tTj5RvrjdPePnUT6Q90RAsK5I/itodZ8VOAvsMP2/r5QHE?=
 =?us-ascii?Q?BaG4q8Gc7AmMhfbJ/Q70WheJq3GghX0YcWc7QB7lY5HlEoACNFo13/7R4L5B?=
 =?us-ascii?Q?cVLaiPuW3IdzZTpqOOFaO7D66OU0q4vDOY0NN4sEoJOT5w8mxZi/MXsC3xBP?=
 =?us-ascii?Q?qiOsQvIX+AcJsbUZEosFYZvsenxj6b/NczYL1WKQN/F3sbPFVcShEzA3YJF9?=
 =?us-ascii?Q?GhJE2zK+VQajoHbXdyh514I+P4+Br0fRHCDdpoO739EVaL7KPd+iEhYxwSxf?=
 =?us-ascii?Q?yn1ydGxNdOCJItKLqOkK7I2I2VTNk536XHzoN7GbKrf/5wlBYFzyOlI7a+Du?=
 =?us-ascii?Q?4LTc1GLLRhSEV5LXCJVJ9NLVxzKTtO6+OnTPhe+w09tihfEyuvRH5N6aMweL?=
 =?us-ascii?Q?x4qDfMVVTfaJ8c+19/vqFX4rZ4O0FtPMndPQIgWE9YZ/h1lepaT0ZURWb8HE?=
 =?us-ascii?Q?n3ksTnsB0raa2DUa5zycm9T/sLLuapRt8ylLok3hZLlO7w34wqub34rV+P0y?=
 =?us-ascii?Q?rbVHbqSSG9tRxe89+HTn3USWrdR4oWdtQ+VH2N/U36jNd1pin2ZoAqoe0HCl?=
 =?us-ascii?Q?sidTb2DwtfqWzxGr+hupKKYUCKjDqmHE4SRUWl7sFsQRiF7j+Txjd/Gi0QFZ?=
 =?us-ascii?Q?/IYr7WxH8tWfxL+K96HuAWzUGL1ZIaFcJpX129rGnX6mVxNifoCooQbG8MTi?=
 =?us-ascii?Q?hQVjWBLKLHEz2+kbLDvn7wHA0cV9BFfOKKiv5BR2J8XW4avCCoJrTAtQS2jj?=
 =?us-ascii?Q?ocnLyGgtSja3j6ANHoYQa0V9JuZdMti2t/6h8PJXeKRR6ohmRkX7jlKzwyuK?=
 =?us-ascii?Q?6mLQRPYcxOMVxNw4KGzuyO5kFlio9Ni+wu+1h5wMBkeQiMnCAzKZbxZJmodC?=
 =?us-ascii?Q?RDKYO+EYSDq9QJuqrDryY5+D2exGD7938Bd2JwzYgEbgDllrwkv+eehCixda?=
 =?us-ascii?Q?GkT6d+fIWXBjIxIdb0SC0lg3yLOPifs9iREAd0sTobIoiNg1w1ORwWI3fycw?=
 =?us-ascii?Q?rwKiGIgcM7YGk2EagvjhRM5GdvaA/BD10h0RoOCmisrkT2jjgjner5ZkYfcQ?=
 =?us-ascii?Q?GoPgmXadg90eGSRZ0r877jOVVVjP4qRtcvb7dKxPvuM7fy2cEZdkp3NOgA7d?=
 =?us-ascii?Q?RtO49bOgukJV2nNcwo3wUsxsbttyBmfLxYOLRif3pjXlFYSRIuTEDReBtb+j?=
 =?us-ascii?Q?A2sML+SZBa7hXVME40++8kKgcCxP3yJtFAPJoOQAXGaG0UQBUHslngqPZ/mg?=
 =?us-ascii?Q?aFR36VrNc2AGViACoGpCj7W0NC5ttB5Du5yZuxafxl77Ewkyk4IUtj7f+1h3?=
 =?us-ascii?Q?+Jwl0pQfakyt4joPleHJ5lL2+gAblBfirQ/W4vVGm1272NkSCgCptYA7QgDD?=
 =?us-ascii?Q?+Mgtv2oSvgABRJeY5k6rffiLTcsjwQ3QJ19HCD6CfWTBdumBf3f00Nl/Z8h2?=
 =?us-ascii?Q?bJzbaX53SkPbwUR05z0hkCAZNwzm5vUWNlBfLYuyt3qd5XlDXUOBHG08TFfK?=
 =?us-ascii?Q?Q3ejc+djTY2eDX/rfbmpI64M83lyI3lFZ5ethKIYq2Gdoug1M3TMGjqqVzat?=
 =?us-ascii?Q?0Nu9WKA5tthhSq2ORgWFfiaQ0p3wMUqDMtWLnrra?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e01885d1-ed5a-44e3-744e-08dba8700d97
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 09:12:22.0489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pq8hoqHGrhlzpFmsRs/++AgEFK0QCrdqoNIZJAoWIIxlk9KFn5/physQKGwzVTQA+AwJoL80Snojgkyokem8p+3XYQWsqvUmWocq475qukk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693300351; x=1724836351;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HCw1TTeDURtJNiuyWebXCBEHkj051qiIcqtYyruCNU4=;
 b=H0/Zwf3ekRX+atq2OeuC3n19DtVCLC8ZXZ0z1/Znq9pbnNHNJJd0HPJ2
 KtBhb6CGrt4NYLQtpV8W/jVMLnfPtR/xjhTRPwxRBUnSt4f+RHwKYWehf
 yRR3NSvUdSWKk5yWYMFefnWuxHSO+WqnXBRj5xxPuIiXfkAoSh45eTEzL
 FuTmmizJ/Eh8hUdVKMISQ602DGetOgQ/TPmnlin/7i09K+dP0wHXq53cx
 zP3RfUZ/fjzf4nBREdSM6IiQ9xO0kugxls3EOwUpvMnem4igMFliGjqO/
 zFwOXr2LHWDPvC4sVGnupkdy3MPs622Y27LKh28XmJYo14kdHepkXM1Vm
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H0/Zwf3e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: Jakub Kicinski <kuba@kernel.org>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ido Schimmel <idosch@idosch.org>
> Sent: niedziela, 27 sierpnia 2023 10:47
> To: Drewek, Wojciech <wojciech.drewek@intel.com>
> Cc: Jakub Kicinski <kuba@kernel.org>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; idosch@nvidia.com
> Subject: Re: [PATCH iwl-next v2] ice: Disable Cage Max Power override
> 
> On Fri, Aug 25, 2023 at 11:01:07AM +0000, Drewek, Wojciech wrote:
> > CC: Ido
> >
> > > -----Original Message-----
> > > From: Jakub Kicinski <kuba@kernel.org>
> > > Sent: czwartek, 24 sierpnia 2023 17:32
> > > To: Drewek, Wojciech <wojciech.drewek@intel.com>
> > > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> > > Subject: Re: [PATCH iwl-next v2] ice: Disable Cage Max Power override
> > >
> > > On Thu, 24 Aug 2023 10:54:59 +0200 Wojciech Drewek wrote:
> > > > NVM module called "Cage Max Power override" allows to
> > > > change max power in the cage. This can be achieved
> > > > using external tools. The responsibility of the ice driver is to
> > > > go back to the default settings whenever port split is done.
> > > > This is achieved by clearing Override Enable bit in the
> > > > NVM module. Override of the max power is disabled so the
> > > > default value will be used.
> > >
> > > Can you say more? We have ETHTOOL_MSG_MODULE_GET / SET, sounds like
> > > something we could quite easily get ethtool to support?
> >
> > So you're suggesting that ethtool could support setting the maximum power in the cage?
> > Something like:
> >  - new "--set-module" parameter called "power-max"
> >  - new "--get-module" parameters: "power-max-allowed", "power-min-allowed" indicating limitations reported by the HW.
> >
> > About the patch itself, it's only about restoration of the default settings upon port split. Those might be overwritten by
> > Intel's external tools.
> 
> Can you please explain why this setting needs to be changed in the first
> place and why it needs to be restored to the default on port split?

In some cases users are trying to use media with power exceeding max allowed value.
Port split require system reboot so it feels natural to me to restore default settings.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
