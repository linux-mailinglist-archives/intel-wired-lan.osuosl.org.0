Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BC278C25B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 12:36:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E5EB60803;
	Tue, 29 Aug 2023 10:36:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E5EB60803
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693305370;
	bh=JB/iAEdyfKrSa1voouXEREckPXLtmx2cUOHQsaDA72Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bZrsF8yWJOSaeRz+gKlGFtDANrxZEV62oEGTKHdGhjsBQST16pMUc4qlP0xP5yXPU
	 y/gWhKWTrN4/kNRuYoWrA2UmQ49X3IcitlCDzWhzI6/yrZ0vkcP8abA2hlHng0tlv9
	 K+UDpoj1jH2N5GCDC6WNJW1pPrnRV+JtpZ7MQi5BUwpgTXa1I6WHb3x10WM9/42D6S
	 loj1BJFCP8rSbTBYkCAhG4OduyjBTUoJPxz+1RsuEG9NPPoOFd0ql3OK3VKw3jAzoP
	 LME6xbKwyPOOGa8deyRcv9hUM08Ja6bJGdi1Po9hlvwyy17q9FEVC3GLd/vqltIntA
	 84VTqQT6www2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uCut6oRy6kQe; Tue, 29 Aug 2023 10:36:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E830607E1;
	Tue, 29 Aug 2023 10:36:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E830607E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C95B21BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A066740912
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A066740912
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9jfvkTWxZYv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 10:36:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FC0C404A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FC0C404A0
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="372746883"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="372746883"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:36:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="715483610"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="715483610"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 29 Aug 2023 03:36:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 03:36:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 03:35:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 03:35:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 03:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fo86BgCMNZ45o+FQel3vjrHEU378cy+BfR6X37Dza4oCfh64hN7PoNh9Kea1WeGtxi1H4blB7Ko4ue64j9eorL+U+i/UED+oShlH0X5GfoffOSDhgvq+41+dmZx+kZ8WObRCFnUAU73AAL9iWVw0WpVaYAbrO2/g1fgvPJPpewZrfyU6m58skR6HiE2MzpWalHVfOIA05Y4hxGF9c62HnaZfXrV1bmj3E6TO1VvxGMToWknQwlqbM6Fe15gGMcVslxDCKG6XQ2r6azU1KWWdxu4KwmtgwCEdLbcnBeHjFT9d3w0goJUMA6bOuh2Y83AfcVuLGytNJGZztFgcaYxtmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8TbboBdDQblawUOY8r2DsFiQwOapTSO3ZoLLrBkhRvc=;
 b=DRh12oEUJjvDbK1BlfLfc1sWvhwls732URJ3YX2CQLhQJHBGFznBkt0ybKIw4/8TEGOQKUy4oIPWsFCBZk2a/APqTrQzTx8CPXD2zj72kuF97KDAijjrKtUHeCnliWRmI2hZO4tVXtwxQTzbVbn0jJf6oEraQ/E3MRkR9mjLyQD5McJXTomT/I5iodEwf4pVVARaYdemFmZDax6ZCXqCTSDEj8JqDIrZs5R5/iVBE5Rl9hU539XJ5fKXPT6SiuXQe1x7BUjYfnHRF1WQP95EJge1lXozS3hXOLAmMOIkiv8QPcOFD/RcY0fZXDNjUR6sbq+5ZDxed3UDwnOm5B2u2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by IA1PR11MB7773.namprd11.prod.outlook.com (2603:10b6:208:3f0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 10:35:52 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::874e:6435:4a8a:3229]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::874e:6435:4a8a:3229%2]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 10:35:52 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH v3 iwl-next 9/9] ice: stop destroying and reinitalizing
 Tx tracker during reset
Thread-Index: AQHZ1PX4DPNmd+CsKkKxOeym1Dk1z6/4Xe2AgAi/hcc=
Date: Tue, 29 Aug 2023 10:35:52 +0000
Message-ID: <MW4PR11MB5800133DAE0F85E3AD0A1D2986E7A@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20230822124044.301654-1-karol.kolacinski@intel.com>
 <20230822124044.301654-10-karol.kolacinski@intel.com>
 <2dab6c02-3db5-c2ae-ea56-c75c2e7a8834@intel.com>
In-Reply-To: <2dab6c02-3db5-c2ae-ea56-c75c2e7a8834@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|IA1PR11MB7773:EE_
x-ms-office365-filtering-correlation-id: 66b3d7bb-0f11-42b9-e86b-08dba87bb80c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ztRjUVRQCaHburzU1Vn2TVT+fZTkbyRoVrAkjwTnKUelLTFFD+V31Ba6LzIDhEvm6QCTwi3F07RHm2yCLrCZM9CMsugJdx3pA/zJePgHePqW7h9GbKzwscj9zsP7xKhGwuqbdXHYceFbn3KYg364Qfyd9CHNw6k/uOKkxDPWIFpyJCwc4PF9iNg/tJQ96ytKw9cuOyRzwdDfcejNG1mc8Ckj1ZdKYkW18UxWo3k3m+I5z1E9Y1luaAmsR6eAewvQdWted2c04CeZNvZA/g8cBYmN2DKyMiDIpf5wuFQPeOWuqAP8Gxpy7Kdt3RuGwDJGF1tfFkBQZVtIfw1291kY0298DiAhVYVj5to7YCMKAm8LCp1OtBTj6h82rD2Am0okdLg2yYRZ9SSWrzkjbVivmMk3xR819kESZqAjK0ogueAp0WDsicusGE+wBUL7kHM0yKC3LKfI4nzAesHAuMrlOf1PJIpHGpjDyJQc2riPZ6sGAelpwLRzPw4XTuDYe+uzQnk5MWi8+tyRVsEJ0D5yyPv8V+yzVHH2yHlyWKjhwFCmFjLgjyTEtg1lNwt+jeZh9OhQhd9ueTxF9ixl0VnRUVCSzcZR2YgyqBsUbKOHnREZoQrnFAtu5m10reMeqHj+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(396003)(376002)(136003)(1800799009)(451199024)(186009)(9686003)(38100700002)(38070700005)(316002)(41300700001)(82960400001)(4326008)(33656002)(2906002)(86362001)(4744005)(107886003)(52536014)(26005)(5660300002)(8676002)(55016003)(8936002)(71200400001)(7696005)(6506007)(64756008)(66556008)(66476007)(66446008)(54906003)(53546011)(91956017)(110136005)(76116006)(122000001)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?CMWpXIDwjAf1f+Su/HXtQM8DbbTKk7BdVl0ZisE+DarDwhXliiIRvEzYP8?=
 =?iso-8859-2?Q?MLh8lTTJvd0c6pZAnAgGcGF1vynldndZaxZZ2mgslrBNVyt3m4fEDuG2c1?=
 =?iso-8859-2?Q?vF5uMyK19Y+hKvJp+L9g5IPzKezoPNao/kLLkMLe5tGDuzlkIwEi+Oea3U?=
 =?iso-8859-2?Q?9cITxQ47PYVdjmAvSTL2SW2yvyemydJGFhDGpsaMfyGzI7GIH4Xik+6n0R?=
 =?iso-8859-2?Q?YziD7etv6uyw+f2MkcWF88jN/xQ741VNaDjbhsMshy8P/089saebEbKUjb?=
 =?iso-8859-2?Q?L5uxwiXudhnQw01HXx3vdcOoD7ITtASSJy+m/I/uSwdvV7yrrT7nfx9pfq?=
 =?iso-8859-2?Q?Finf32oB9r1GU4wmGNZR1+fpnEdtrKC3B8PHHueNDxokktVfbbNyuGJPa8?=
 =?iso-8859-2?Q?2WcafyXH7OS9kjAHYRCPtl+57Qs+bFPOE6Rz6T7TEjtZ/icA1aEXV4NADN?=
 =?iso-8859-2?Q?P94A7fr1iPxIUegCq2o7wR9zQSSvSY+oGDvhrIPQUFRuodfYtxVym6hZlq?=
 =?iso-8859-2?Q?O0Y6miJrWQPdFJgqyfOjGcy3w451xhguEvbozNfosCLTJ7IydtYuW/ob/S?=
 =?iso-8859-2?Q?slrcKY2A/gXyq5Jd0GNkNja/X4Qyj718Lc+GsVQFlpOgq5E73V0oWfhxsI?=
 =?iso-8859-2?Q?U3LYaP/Qa+iiWxrL0QpBAMhAWmyFRxgnUhi39Kz/DdjVeCIpUTg6PlJtFU?=
 =?iso-8859-2?Q?kItFij9H0wuK21EsO+jLiyRwnvwiH4/N4r0pbWRpJVNMvp0tR3/IDCeQXk?=
 =?iso-8859-2?Q?yvWqkdNRumcyaYn8aSPn1fLC6Stij6Xqrx41mF3r4z55+CXw4MkIZ/mR0U?=
 =?iso-8859-2?Q?OzZv1T6LkEnw/JVBhf1DlcivWlHZpbT++NybZkCM6zyUBqFY+0o1SfhgnS?=
 =?iso-8859-2?Q?9coGRHKqBWiAQhYz6jwRimE/nCmNbQJmqt8r/vFu/HisB5ofItrErGBFAn?=
 =?iso-8859-2?Q?CEYWXmV1STm3bClyy28QU0jPwJo6xlvhUJrsgwriY/P+zIvq5pKz18AA2s?=
 =?iso-8859-2?Q?UNUOCOUy2dgOeBHKVfEoa4Xq/oz4mhm5uOrY3K+X/h6QUgKPh29hXztTiB?=
 =?iso-8859-2?Q?qmtWnbV036NCe88Dk7/CYU71ncOgAQg32Ra1QtQiN4zCZxErsxHhj5BMDw?=
 =?iso-8859-2?Q?8usJXzRW8anQ/dlxUKucNywB7qwr7Zvx6W/zGlW1GARzYxVCzAuhGTJaVt?=
 =?iso-8859-2?Q?DWJMjDlWRswQMME5kWlOzHhMvRBEzlrsFZ9bBO+jUQrXnPbwgnIH5OBaHT?=
 =?iso-8859-2?Q?H41lAg86b7eoc7YDOAHWCUQ+ZF1FJ2brcM/KFizYCP3VC3bwt4l7KJzENB?=
 =?iso-8859-2?Q?TwSM+apXh38RA88F2fnXpJOt3qV3hvTQXur1Fe4Nr+JFBuMse9NvA/MAyj?=
 =?iso-8859-2?Q?Z4VGrCAdSOTWCO07D8zbH4CK/LuG92XFo0lzx1LYn9lXizjaaEOI6mZAxy?=
 =?iso-8859-2?Q?w0QMgG8IZcbm0z78YBpLo+NcHLN/OcSSJGkL632FB5mAufy6hbqIbv8kU1?=
 =?iso-8859-2?Q?EvpKo+oALKgMXy+PBYIxtIJTx4LHWTRtTyYa/ukG6g3RH7CRW1nw2ZLlJj?=
 =?iso-8859-2?Q?kZWszhZz0oXbcTdh5ahkndju2TLxoFFjGGgz+RzyS9qEB5us3K59oh1aQ/?=
 =?iso-8859-2?Q?NupvyCTy/tdmm7wk0Ev/FKI0Oipd9awNclH9OMuH1BRcm1sEmK0gvtyA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b3d7bb-0f11-42b9-e86b-08dba87bb80c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 10:35:52.5221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7pXvOpWanOiGoVQZExG8J+i1HJs/fYKzjF8lLpCcS+i8MhSraKJSIbt/X0c/4jQNSYkg8yn+LNwmVgAdGUClysgjMAhT8P8L351lGPsZTks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7773
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693305362; x=1724841362;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8TbboBdDQblawUOY8r2DsFiQwOapTSO3ZoLLrBkhRvc=;
 b=eFaYMEYOu/X62pHtCM8H99N3RlkP340LbbFQ0LEzzlZnRSMg9D2joTF9
 o+dqkUsCCc7rymBSjNk7zQRWbzCNpPSBeyyejkGbhEr1RQBBgoLHjETtu
 voBgWp7QxA2sZCKXd7idcZXZFkZqFx7nf5IetGd5PtK9GqUpKFlJRU7Li
 t0jbuMCFWD/rHcR0xK7gwHAZGHEUAF5p+z36pEEXOVAFwpduEj5VGxwEh
 RGiNECsxFmba2dPdL0I1LpqNLbhkx9K63MSSJ2pezwoLA5IjnVxxbLj+A
 XAvw84tGa0qdcFR3C0h8sH5vsGnQOHc6/FWOsVsxBz2ZhO12FoWQGYn5f
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eFaYMEYO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 9/9] ice: stop destroying and
 reinitalizing Tx tracker during reset
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/7/23 10:53 PM, Anthony L Nguyen wrote:
> How come this isn't for iwl-net? Some of the other patches in the series 
> also sound like bug fixes. Is there a reason everything is going to -next?

This patch series depends on new features introduced in other patch
series on iwl-next. Bug fixes are not possible without auxiliary bus
feature for PTP.
Some of the bug fixes could probably be sent separately to iwl-net,
but PTP reset won't work properly without all patches anyway. 

Kind regards,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
