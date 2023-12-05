Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11135804A56
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 07:38:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9687A60669;
	Tue,  5 Dec 2023 06:38:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9687A60669
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701758320;
	bh=mCJgs/WQQ5GAmrFH7OTrdEojo0mF80c5G6u2yrO47TY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iU/HO+uwS41TXpHbV3Lf6vq7kO+vmTpnbdHmJvNolrZYkusLnSki6kRKlvbm4jCM5
	 IoJ3ubbesUeq+X9JarWecpOQgrjffB4UK+cTF016fxTpu1DJN/Bb92NnCUQbvZ6hi3
	 BotueHm0PrbRkerfBSeJ2HKk025mSqM2vPg8Uhv/p+KVoofWrzw+Mv9GiallDXVoRQ
	 Swu9rbZskvPxeL0I7nUmvTLAlGj58R1P4IFFCmpAbzTjR8yGO4RcFF759m5zsJkZCd
	 sMFlNffIlthqLvHMNc6cLpIgleRUqLKLZVuFGQD8H5h/52hef5E2qWCBqH80ndK4Ih
	 0/KHI6v/lZcng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTuf57sSHrbL; Tue,  5 Dec 2023 06:38:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F64600CB;
	Tue,  5 Dec 2023 06:38:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64F64600CB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFFE51BF33C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A27B9600CB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:38:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A27B9600CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wBbhIAerOEh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 06:38:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3938600B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:38:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3938600B6
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="393586708"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="393586708"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 22:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="770802269"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="770802269"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 22:38:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:38:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:38:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 22:38:30 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Dec 2023 22:38:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjhJCGXhxarWeHrWgeFEyeDF9AJRhdERPOKOtcP4iC4cg8U2ViMv+hnpgxVXn39hXqSxS54yucUxX3a2UxRMjl2kSK1JRW43+6+HHoiSCl334Tm1WexdA587CWCoAk75L531YCdr0GKOQZ1FC/uRspBaWm6j/bs7qacEQeXJYKnKkMQ5PNN3GLIZhuN3N3PVm387NQGMDpPlu1aTFYeffTUiw3FlZwdjGMMa3UMl8yfrYk7XKhqWpdwbB6iDy0iSvTuLZiD3vwdXLATctxOC7KZ49w9W1Fc/0tS/t0D8tS0PSNA9uGPSw0pCd795ghwCQZ6AO3BkiGleR0z93dy60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kvDiU6Cz8Wj/PhNw428P/5zGxTpNyEgrTY60cDwPJpU=;
 b=WO++0nER4Bm0sciMMxgnfaFnwlti6ZnHpkq1xc2oemnQ214347En9s50XiLuLDcCbM+0G6oe9Tfm/U5KStRrPNPrFiGmvERy2HEHkwYbUTmOx3mz83xr9K3LH1SAxq9lHGmQ7AQwtSHBUcORkYfpoaxlOio6f8i9kqDzgv7DX6iMrx1Gac9zyp/syYYDbSYulgryt6u1Yy7hFYHdweDoVFFbc66RIW57Oo1qmh0w0LIOhg62TG/2jxSBPmHWdsiMtvNP/Brtf3ygZPdW2HtMjyfYqZgCPCE5YRczA+cZnBcY6b0FystLQksstbbO2tCt3TJDMRUoKy/xasxjAB/6Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB6728.namprd11.prod.outlook.com (2603:10b6:806:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Tue, 5 Dec
 2023 06:38:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 06:38:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 11/13] i40e: field get
 conversion
Thread-Index: AQHaHMCSQaL/pKx1F06yA7X8ZJymf7CaUPQw
Date: Tue, 5 Dec 2023 06:38:27 +0000
Message-ID: <BL0PR11MB312212E746C70D4419A3D13FBD85A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-12-jesse.brandeburg@intel.com>
In-Reply-To: <20231121211921.19834-12-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB6728:EE_
x-ms-office365-filtering-correlation-id: c31aada0-fcdb-4b5a-d8f7-08dbf55cc9af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iO27uRab47eWIL5ABALAvIgJadDuxx5zZgYP4+ouCJ+lVP/mvXW/GKrPKqlVVESTde5kd7dRWGpx/QfjMKPUdIGybCmHkRcA4xfK7pS4UHsYkfbMXV9c0Mvzt604L7LvwR9WtDhH1J9tQDXyU2Try5qjr0tT7InAmnymbz1T3DyCXbKvf5lv4X6o0a7KAZvD9Fhycrj4DOjbnWvRAG7HgbLY4iwAghZFXIMRxKwmNn+0Oli9+O6JRULKFWZ8uxITa2afbOCE7ehicFqHPGLvbOHVIreyQDprCozZuQ6WhKKCoEkqcaqGRLlLt2rKuF/uXbpuCIQ1j8w0OHfnJBPlkAt+u3tvC8xJ6J+dQmUnWyeyZOfaaOOLPAtyuUbtJk+kmODnjNxahKthIBvCHBVCBhUUnCjajPJ3ljGLMhoEcVqS1T6cU4h6jRzPtO2niQDGgBU7uq5WYW4V3mScOSDtu4bj/thXESccJv86Ot6wgRV7mq4EARTmOG+dDfW5YQLWmlC5hfMZgHEMk4m/DzxvUk0WOqkWco3mSvLD3Aoz2Uh1t1PVE+m9qX21DSKlfxYm7BOhbMjumrVA/KVtwpqM/KRbFqjs8EdUuE6tYMDR57wI89vv4P8Odjy6OSpf3w+v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(26005)(55016003)(82960400001)(122000001)(33656002)(54906003)(66946007)(76116006)(66556008)(66476007)(66446008)(64756008)(110136005)(316002)(83380400001)(9686003)(41300700001)(53546011)(38070700009)(38100700002)(2906002)(6506007)(71200400001)(478600001)(7696005)(8676002)(8936002)(52536014)(4326008)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xwbw9FpU1hZrloLaPQJTyV6gUP/AWcZXX/7DznPa1kcmh/4ZZA6kJPgYULLX?=
 =?us-ascii?Q?Ko/rEJMJKSxCruDgbzXYLqp/GLK9DUbUZaJ61/HTca+eICQTYqAOwx9fjHs0?=
 =?us-ascii?Q?BwjQXVboccXQbKnHPacgA2oMIVJJjljJy3t9Tm+WmUhfbOF3tCCeULg2jFPn?=
 =?us-ascii?Q?iHLUxXjjdowi7WI9tJ5IcVWWXOt/Bn8pwNrchWNn/SHAAejkFOX4ElIbLAZN?=
 =?us-ascii?Q?rZ/niYN3NzPzRp5/pBHWxI/3Vhry5VTj8DUra96T7u2GeaYzWJ8apXoglOT6?=
 =?us-ascii?Q?hhwvKsyeoJBRntJYdYyC+liVM06RA04Fm7RWkO/CgC5HM1rX8fdPfZF5dlzi?=
 =?us-ascii?Q?bA+FPhf8VWPEapVfEgvSxEeEor/UGg2QBvGi4kZlUjq26Qut4gErlbUnWw+3?=
 =?us-ascii?Q?nd+rP1pKOzjx/Zr1fK9Zeh2tp70lNA2tPZEFWe1BotowSMVowsNzsnq5NKbk?=
 =?us-ascii?Q?wzcPKTbIiofSMRhQmDa2lBU2PO3BSPOHIkF4D7Upc0tfOYJGAQCYRNtsTBDx?=
 =?us-ascii?Q?o+Ifd97pezBMUK99bdVIj0j3YFWuPJYgZVDbyNDjRWL82uesDOrCHLww/11H?=
 =?us-ascii?Q?TZXqCxdsvrQkVuxReWB1s6ARxABgz20yBUqMJL0o/3cyta+xXh6eKFqYN/s1?=
 =?us-ascii?Q?ABU3k8w9rg9RK9Yh9pGw1rWJQjKSC51pcNYfxE3AuidChRH1XWG2++QikKyu?=
 =?us-ascii?Q?O6vdxs7MoQURIxfLf94uG/7R5ZQ4MpL8BP/8IvQ0Bgygs961HC6I/g8Ak1rK?=
 =?us-ascii?Q?r7o/LEneBrNkCDjCxxG1Fwloz4AlVUaGNIiOmxIhXDMTNS7LZ9JInwr6LF6F?=
 =?us-ascii?Q?yoZxJ2SALCrUR8ZmvgdElWtCqR6/S3yNLREt6Mq3nGk+hoWO7pQIaSwwpKPv?=
 =?us-ascii?Q?wGeZNgff/MXO3KBKbB9QbobVLgt8uIoe6d3zHmjKHJDldNAv9oeFJS3b3cZg?=
 =?us-ascii?Q?9Ou3r8PF5NAOib9yyFOUv4J4QX7BEMYZol2nn5WKa1XPNgOv+Z9o7hjoycQl?=
 =?us-ascii?Q?JzBrWgSKiGhNXUeGB7sHuRpN2cR1AM5FTftUOHYT4NEcTT3zOMde+WljLq9A?=
 =?us-ascii?Q?MC0Gri0t6T8yiyim3UUPtssfHd9bMfxN/wSFefQgpsW7kVngC+O8q5zr8Qtv?=
 =?us-ascii?Q?1NyXVArthyfKm8WPmG6LRS3Yh10/Z7p9HO1XMEVwtEOjw0cusiKq/cRM5Sx1?=
 =?us-ascii?Q?ed+TdbKVwaEpn2jb9J3h0Xhxk7QYiHk6zrke/20Ks7z5ifCIRUo0rU1A5Uts?=
 =?us-ascii?Q?kiVYvoVlXtODLHuG1MMRsohSGEgo3OIMemLDmyW+jvxpw5JwU+V/UoaMapB2?=
 =?us-ascii?Q?LnfJNhlFDUHYSCshOpxA6UVbbZkfzqfKHZcq7WYBcEPhXfaQ8yPbinsC679e?=
 =?us-ascii?Q?1z/J4nbDnwLmztVXZh92XhLYRmrPDVu9/OcakxzzZQCkvozEvAhbCeVf4HtG?=
 =?us-ascii?Q?mMvhbsyYIdKOtiFzRjkrFGD3tgY2Q+FOVNB1w473I8M8U3hmckSix4V8g1Ti?=
 =?us-ascii?Q?jyO0bq5ra7TgvJIsvinsFpkumGpAU5ZonYtgQaN2WmXu2SHhc8ZiqfeKVZWJ?=
 =?us-ascii?Q?GFg5IjZa/YWIS0z6VgEwEH0DxRdQOdQmabdNnYs1GYRecOL/INcK+KncrY9j?=
 =?us-ascii?Q?FQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c31aada0-fcdb-4b5a-d8f7-08dbf55cc9af
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 06:38:27.2522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ybjr0I08blUTSgmwNU7CdlXgAXFpKZCf+7OOVCSbFosjPO1e6h54vaUPNDPY6Sl2ubpBd5gZsOtW7VEp6/E4T0YArnR0Z87NnxIhoLKMmpbXhytnSvfU/7gvVFgc6shq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701758312; x=1733294312;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VVh3lKRyjZHDoRoXNVYLXq89ffAcHMmIyEEQWFmRHjQ=;
 b=nijyg6ZpAVNCpL9+Q+jgWSew7NUzfX++NwVCYFuWRpLZKTl2ycMNTa0C
 uGDwVnNzGCiam4oedhuXgAG4HK5+pSxnb1u2UZQZTFAoZIE7odcgyGr8H
 6PLGElJBWQkRByhJ6jj2onqnZ6DVXnEglnOWVG5hQe88u/c4kNJE7Y2wN
 2pcq/s7D+l4pg0OSsfOvKeglZfEvOKCTPbyP1eyZD57iTYprGfd7X8K29
 5PPrc+q8jxHrXMmMxB67dJD0lAKgjJ5H3ry9zhpC6uL6JbCrIflYtrWKx
 l05NLiITdgfHp1he1GLbK4bv5aGWMdXr5g11ncLwjZrPX36dZ/uw09EiM
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nijyg6Zp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 11/13] i40e: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, November 22, 2023 2:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Julia Lawall <Julia.Lawall@inria.fr>; netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 11/13] i40e: field get conversion
>
> Refactor the i40e driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> While making one of the conversions, an if() check was inverted to
> return early and avoid un-necessary indentation of the remainder of the
> function. In some other cases a stack variable was moved inside the
> block where it was used while doing cleanups/review.
>
> @get@
> constant shift,mask;
> metavariable type T;
> expression a;
> @@
> -(((T)(a) & mask) >> shift)
> +FIELD_GET(mask, a)
>
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c |  56 +++----
>  drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 158 +++++++-----------
>  drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   3 +-
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   4 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   7 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  73 ++++----
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  13 +-
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   4 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  29 ++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  19 +--
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   3 +-
>  11 files changed, 144 insertions(+), 225 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
