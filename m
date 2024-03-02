Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A8F86EEA9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Mar 2024 05:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7350407F2;
	Sat,  2 Mar 2024 04:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xKfQda644laf; Sat,  2 Mar 2024 04:40:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF258407AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709354421;
	bh=GsAdFk8yZ+sU+X6YwFVH6BadInbWqE7AapNH6mcW7GU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vpi9kzi/j47l8KvCywGuq6ux28cREtJanWrdoXOiD1huIYWxKwhanFKcW9nJejlTw
	 t4ylsDHZGiT9RZmJb+nf2zZHMthyPCHrsAJD+/XHv/bDlJSYEM4NYrPAV59lCWrGGf
	 yF6Kca0mYAWkujJCcRm28PsisEay5250o6svlBn9pSDS6Z6B2SFqCsVGjuowRTqXi/
	 2zgaUo9JbuIaD4Ps1wvhQjRIvAQ1gWiBuiZSnk19vP73OpP0UnneCUAvINJtxtftqz
	 YYiqsj3egw1zNerEIFGzEX+rgY6prIZfte/9XWs1VksOLR+2duSN8Gc9LbuhNfwXpo
	 v+YM2p5gkTOkQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF258407AD;
	Sat,  2 Mar 2024 04:40:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A26231BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56308408AF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zYk7Jq1xBKjN for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Mar 2024 04:40:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 41624400C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41624400C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41624400C8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Mar 2024 04:40:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="3834358"
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="3834358"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 20:40:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,199,1705392000"; 
   d="scan'208";a="8343520"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 20:40:17 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:40:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 20:40:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 20:40:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 20:40:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9YN4hMvXjengIZPqW+weTmjfqqaVL/3O+d2yXdhwi3UMBhpZjU6k8NaEgeAS6H4pJ//E/Eek9v2tUoRErT5ySrjxtApfRk3k0kBcqX1brGIWVekvpWxhcUJtNSm2mF/g1KxNz3319ktJkVQ6HWUOpsUSrEav4FsEZVCDfAEtBTAP1AYMxqkNaYnlOICDCcVVt8xC9YPcCemsg1MxCAiPYyIFWQZX4rnwYiL/Ph0xnVsautXBqkAEoGknosFmEd7ttD83ixtEYUrcYo3uWlXtvxL58KPtjITqBXSwLL+BNsTjMWYQvnM58dmKwTaQ/bbsXu9iMQGsMdGpSpdnqMQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GsAdFk8yZ+sU+X6YwFVH6BadInbWqE7AapNH6mcW7GU=;
 b=GZrHD3bdbls4eUF/r6DaaBSkqV1Ch2xbwgpXiBcqCrr7kzTIJZz/7evFc/LpahbarIPQTnPouaJGL3r64TXkgQutRKM3nIEdySE9r2swwMR+dX6Jtnqhb5kNl/GxNBTBzPw0+GwQiUvJeVoK/LdPeC3py0e4P4ms6TEiu0PigrqAx91tmKJGJW0vJLFcm6XaK4/KH9sXaOzslFwCq5Qe5VCfYgdRNexXQvfrbE154nyQR9dV7czs3EkyDvZcqTv7r0kYmFrlX9+A89Ws9r4s1NMWJI9YxMd3Pkz3KpGYluqjroFT1OZjS1N3CFNCopJv7x2b8gvJAR6aXf4OgcjPig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by SA3PR11MB7628.namprd11.prod.outlook.com (2603:10b6:806:312::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Sat, 2 Mar
 2024 04:40:14 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%3]) with mapi id 15.20.7362.017; Sat, 2 Mar 2024
 04:40:14 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v6 11/11 iwl-next] idpf: remove dealloc vector msg err in
 idpf_intr_rel
Thread-Index: AQHaZcJBRFfgFVq8rkKvhdFbotpri7Ej69fQ
Date: Sat, 2 Mar 2024 04:40:13 +0000
Message-ID: <MW4PR11MB59113B50E821D3917F58E0A0BA5D2@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
 <20240222190441.2610930-12-alan.brady@intel.com>
In-Reply-To: <20240222190441.2610930-12-alan.brady@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|SA3PR11MB7628:EE_
x-ms-office365-filtering-correlation-id: a654422c-51a1-479a-8621-08dc3a72da1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F4g5kE5Gbl2EVJVnqPxn8zwNMFuaFXFxwbbJLO/N8TPV/QOi0Ogf8RnzodPvoUlP9Bz2Rp6rZChrfxbuLzJKklwVoE+4KwfFDuvOQe1i64kRwVNi4mghyf9cHLQVTOdcQgIZMxcmyAHRMlnVM6oIScq0Y/pDPgwsNzyAByiKHk4e9l9QgBJ40ZDpRkH+Soi3jkhtSySOObNKksxYqpvohpNzfiDvAr+xsuu6KCtg6/eKmttLDEZhzb0jJGn7ffmcbgz3rx78EJEvhDFroCy7KXJwRF6BHCepNAUDtvP1TTdBlwCFHnEh2rsNzjuDH78skhhikVTBlkpA261EZ5X0mE52hJ+BLiNkgaUFdzkhFvsad2vx85VODyzTg/SoDYI3svjDA5uVbDU+GF1KyfWtpG/RlPT+6xZcbMGyTPB+m8nGNXj2btc+YKe4vt8qhCqrxVbVNzdUn9u0UFqbzQMge6c5Z6YKUqYyc8QAESjkEqBRqqTGlEyv+kRzWuMwmJh2h2M98g+vVlxzV3N51h++gTnHgYSyXlY/t+wtcCYoIGi+bX6YFCba1Z8Uc+NIflXPh1Tif5qvxgS/c53Mysn1OMDt4v83XDirt0m+vqKv6N+PzlSGbCWUVFSFvt2NkyB44rCIE6ROZUHbmqDlVGOoTQYXrHHtCxiGLa20UbAOYgMJ2RHVZqQ4LgRDuLzLz9V7JzyhQJPpeXGZu+gE8rjL+tQcCUsVXm20DBDFp7vRx2A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?utIRn8scpX/HrYqf4KodQD+Gt1L1i/tAKPpz2jCiI8bW3wb1lH4YKtC6ApBs?=
 =?us-ascii?Q?DmCdALFY8qIqyPWYIT1seTitnkItagF70QZx8icNJE91z9kkFDHOMvovPHJ5?=
 =?us-ascii?Q?EZBNSEDfgtUbfsRWyi2hB/7/m9QRwys/sNWvgcB8kUHNJ1vsJR8XNCv+ilB8?=
 =?us-ascii?Q?HBxfyDpw0N0O0MX2L9PFaUxPVNj/tlarEdHEwdjWUl1jkd/8X+Z6sxEVM7fm?=
 =?us-ascii?Q?StSrOLjNHYjwr2RgwEd+bbTOohdCwMUi5yn/clpOFcx/J+e/G8kYw9MPNW1d?=
 =?us-ascii?Q?lk5qKcEaTXdttMfmS6g4JHjhpBud2phyCPUN1+PhsS7JdwkhYPRnwBGDo3y6?=
 =?us-ascii?Q?mw+fixnUOFH2YgCoJo/wK+miRXDmwzEAWu68l+2/LuEdO8PsmZP3G6b5BgtI?=
 =?us-ascii?Q?ZmvFAIb9CztrX5c3qzW2iWZTRdXf1Bwl/OdfHGvZTy/JaufDHsE9jv7Grsd7?=
 =?us-ascii?Q?iWRgGQdtLI+EMmRls+aUe/k2gaq4lnv3slSYdEaqGZGfq9/D41r+tQOiYyHY?=
 =?us-ascii?Q?+Vyp5doxzOQX+EdB2Fybx3Kr1yBouvf80Pc12KbQBeoKKQgY8hH0UezRgGBD?=
 =?us-ascii?Q?k04q+hN0wfpkSYnG5aSbpn8YatCoUWgw01uhv/CxehuuR/1KdfcU1NbXQQbx?=
 =?us-ascii?Q?TSDu0M/N32XNhDc2l4duB0L/0DT9bbmQly50rhTs2uUimllpMnGjmcvW/NKH?=
 =?us-ascii?Q?ZADey/B3bTP+P+SlBvCQN1F+Yg/L8AD6GvjVz9H3pk2n3gE7z7d32X+6WzWW?=
 =?us-ascii?Q?nrdaQz4Yw4stEsXtxxm3sx9y32tuJ+116+WggCNluvD4ifvXRAr8KskWHCwc?=
 =?us-ascii?Q?Maoyqw1V9z90x6I9vVZqp8UkqT/2S776DH66arz82aAUbrlLy7A4Y49O/u1N?=
 =?us-ascii?Q?IQNd0dlwKKUKhOSQ11SqfvD9d7ox2HSfcpAmtOy9gFR2lfCfa3IO4es/+HXx?=
 =?us-ascii?Q?wn8Wl5mMLwAt768sEvYBlqW5WY1664UzkQtXflU+Cy3PFkbele3kO0MXJ1Nw?=
 =?us-ascii?Q?qYWKQdJve79QHh/bCRDOOP2whlpCSHfmo65i8z17/lvHpA79Pyki2o/HIRSF?=
 =?us-ascii?Q?PTJXD9AcEEE6FocJP64yc+YhHN47tbB9xFGzL0hYfcxLXZtqz5MxTB5iTak5?=
 =?us-ascii?Q?tQhL2p4z7YgpFa0mmrAPenReEdVxTLkTvmc/RFDOGCUJnFWbCzXtVoVIcyZC?=
 =?us-ascii?Q?ewFzJkt9UZOpdOfPK6bAexBZuZ3wMblyVTpNDItMlQfA8lVyxedizq5yYuOn?=
 =?us-ascii?Q?2K9FPRP2JSedyeaCmdK4MyYEbh7Cf51tqMk5dl9z2hBLZ2ZnRKV7pmmJoVBr?=
 =?us-ascii?Q?UpBpEwrLQgIeOXdsEyo/qbqoRg/18BTHkV806Pd/5iPbumU76tmOGSsT2sse?=
 =?us-ascii?Q?HdLus9KPs8H7C4GU1dqdxxGp8JnyoKnRjvNBFx9d6cdDSIE9QTjZQYQA18WI?=
 =?us-ascii?Q?5hj2Pc+o6Nn3kcUEAYhiqmOa62Nzxa4LbtFsXNxi+mXrzoEeqpmnZviZjeX2?=
 =?us-ascii?Q?E4xcvAdSFj4SFlNH+ochfownHQy7T/fG+dc5Vj7ArxQmjFfcGIvCidUi/rfC?=
 =?us-ascii?Q?ft9K4vfp3Qs/lUa0Eh+O2nCFBuUWN57UBHB4XRjNszuNTLDZxzuXlcBZWVeB?=
 =?us-ascii?Q?Vw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a654422c-51a1-479a-8621-08dc3a72da1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2024 04:40:13.9399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4KfyBUymkTI9m7RBHwQvODMQtnGnUGsVRY5AH/Cb/QwVGbtKYdnhj4CFpo+euk6N6RzDmRhhwYYw8o51oaelZ+Nd6fOSb3Ijc1evBGoKuB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7628
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709354419; x=1740890419;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zqmhiPlklTTChctFZO2Pg3xKKypFMJuQI23gIOCmQ1Q=;
 b=DDX9clLUJEciT4KTMTv4+RGFyALju8dCTk3kwu1d/+Jy6udf5DiaqlDT
 GBZbf92B6uP5ljeK5WjxnAP+Od8W7eOTg6Ng7nRwWpifT9dQhYiwBJZBp
 Uw11Mzrb3Ro9iHVFh33XZBE5V/PMlQHbv8JvmgWNEZ74LK+vHVBOExuCW
 CTliCXeZcgM5Wy39trfJtghDNjXlSwaWJ1koI/fcMVvVidH3rtu4vji2d
 uq13YioJbPQhdUTO6cEfghOvX0bLUeLZ8/QvRW5a+BKA9YPseRe6oQdWv
 mwe4HfpQX7dw0XqUdzxzMPkpfbgZi0kXGxxQXIT9edr+XgO4HEKO21UVT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DDX9clLU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v6 11/11 iwl-next] idpf: remove
 dealloc vector msg err in idpf_intr_rel
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brady,
 Alan" <alan.brady@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Alan Brady <alan.brady@intel.com>
> Sent: Thursday, February 22, 2024 11:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brady, Alan <alan.brady@intel.com>; Lobakin,
> Aleksander <aleksander.lobakin@intel.com>
> Subject: [PATCH v6 11/11 iwl-next] idpf: remove dealloc vector msg err in
> idpf_intr_rel
>=20
> This error message is at best not really helpful and at worst
> misleading. If we're here in idpf_intr_rel we're likely trying to do
> remove or reset. If we're in reset, this message will fail because we
> lose the virtchnl on reset and HW is going to clean up those resources
> regardless in that case. If we're in remove and we get an error here,
> we're going to reset the device at the end of remove anyway so not a big
> deal. Just remove this message it's not useful.
>=20
> Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 0714d7dcab10..5d3532c27d57 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
