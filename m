Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 878156BD311
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Mar 2023 16:14:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0411281E84;
	Thu, 16 Mar 2023 15:14:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0411281E84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678979643;
	bh=xfxfMJPQ8zad1Na4b8kNLCDYL3gfOt++ja9+zSE67zw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UApYpodWYaSV42deu9yPfl9PN78RiP2CZkc9m/r5BwXosD15po/6WCZs6q0TZ4/cE
	 PDeVCvsdGgY4QvbyyyuadL6HsJixE6Cvu86z5C1bU67npi4NAc5O/r0flWqJ17HPfm
	 XswAHaAVmeYe+AHS3Ap4AO777mjh5cNro2SdIPKKMEZt6ePBUbm0Kaji1nayN1UQ5o
	 6RrOFI8ZEQdbGBd3aj0xNPDf0XGO6uTLmofdTmwvcTDiMQNEpP3BBQUMcZCQBZOHSe
	 O8DX5Lzlrr4l6QBGDFXcvqvYzL/F17eRzog13YhY+ZkfWRpw59Y59Hxhz3WMsy4JTj
	 3CJGliW4CEQeg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ZtKXFhxzLXS; Thu, 16 Mar 2023 15:14:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA2A6813EC;
	Thu, 16 Mar 2023 15:14:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA2A6813EC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCA141BF2C6
 for <intel-wired-lan@osuosl.org>; Thu, 16 Mar 2023 09:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A04E040299
 for <intel-wired-lan@osuosl.org>; Thu, 16 Mar 2023 09:59:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A04E040299
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y2ghrvdlGZaQ for <intel-wired-lan@osuosl.org>;
 Thu, 16 Mar 2023 09:59:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 548AE40298
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 548AE40298
 for <intel-wired-lan@osuosl.org>; Thu, 16 Mar 2023 09:59:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="335426762"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="335426762"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="710030868"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710030868"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 16 Mar 2023 02:58:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 02:58:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 02:58:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 02:58:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kVfrZz6KpLpvYs2iETzQF6u9nYOkGom0nIzk8OwCR0ijPVnwZqj+C1SlQKmMsFu1bsZ5WuA6zqXXLuh7sytrISv2bood7cIJlKB3Eshp1ho+zieQtfeBUZaHQk3YsAjykB3UZACvEuPW4wt6oOf45c+0RMqhnRJ0Y+cwbl/B7hbE0w5mxNWj7pnK5fvx2xVeLJTa3OR7PhZJKzUPV3DNcJBj9e+ztpDYzyOwsdtmJOcc/wkUHMgUbQ8LLLZUiPoo5a1slbQTrslhqIudIN7n/jBUClPFia+eedUoEP9LMv/qsEdY5sR5cS5m5bZHakIW5WJ4AlDmL1D1DOQ++eGcsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpBFKu2kbXLilJ4pV5jJYu3gwZ8plloinvQST+zauAY=;
 b=MRvNmUeK3K2GSxb/Y3Jth/do7S3j27h5nBY1cJ0sPtvEtK3B4QTxwYq97eykDPzg4Zf+U8/OO7MkoF9FGsxK/Z9ZNK6osWlJiG+sVPnxueJWGrP2lnnAnywPHbO4L7z33Hy78A6OxkMEERI5mA+VVhxxlusJ7xGRhGm+hVB6DMXcR9IGZ8zlGoMXwMRotAaQSmN2lDakUFRrha18efwnvMnSUfcT4ickTbmgy2517ZSbBuL77rzPeLjEAdqdscbSxyYmgMyJ6jHK6PaJ+hNpaVREx9cs1jx1cQRNbvsOFOIL0ovG7n8YJsR9AQVMOUgbFr8SDOEhIX0ZnH7d59UQ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by IA0PR11MB7353.namprd11.prod.outlook.com (2603:10b6:208:435::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Thu, 16 Mar
 2023 09:58:39 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::237f:ec83:5068:61e2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::237f:ec83:5068:61e2%3]) with mapi id 15.20.6178.026; Thu, 16 Mar 2023
 09:58:39 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] igb: refactor
 igb_ptp_adjfine_82580 to use diff_by_scaled_ppm
Thread-Index: AQHZUaoEY4bLyR9eJkCuA1n2qUve7K7xbRiAgAvIrSA=
Date: Thu, 16 Mar 2023 09:58:39 +0000
Message-ID: <BL0PR11MB3122C84E0B3A6369F9715ABBBDBC9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230308103651.794904-1-andrii.staikov@intel.com>
 <e129c0dc-d6d9-9b56-da0d-69d3d8764d30@intel.com>
In-Reply-To: <e129c0dc-d6d9-9b56-da0d-69d3d8764d30@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|IA0PR11MB7353:EE_
x-ms-office365-filtering-correlation-id: d69ed4af-11bf-4b1c-9927-08db2605043b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hY9m7J/W99ttXKiw567HtJsQ5fj4PiQwQMl1IbF47qjxC966uOAW6QZ6y8sk/zTvTgArndV9uqQHARHU7Qv9IG9NK9h2yfVYX9Rj28LbyrfXCWRcPc7qatNPjZjqHXUwhjEawQ1z/3U0wptyZmbYt6ymLSDFekUJRL3WfLr1gPHrl/KhhJpY3WMo8rBiLvVSxTGrv1UzkIoYx264suH/s1ZZCB9iByarYNYlRAKJfLYJ6I8+q34lj84onmoPzGU4ic+ogD76WmbVq3jGfF5MNWiWG+9WyVcU4EPeLZih8+zMniW1qiNVZSFvxrDFwZJFMMLL/Ll/plV79edVrLyFCMGn0KHbLMcOiTztYdRdxfM5KgPVcl7e4xxbem6iwDfwDw3IJmfsnI2f6ITLiY+QoGioE65N+doc0T9U1DgwcVagjhQZqtxnvq4sunRLY6k8cE6QCp1BibU18bmhqGPbxxTnn6nx2MOMN22tjciipH/rB0EE/vf+AE9a2ItioeG+Y5MXn674pd8lBLzikq1EVXhHp/xu+gubzx+RKqQ9ljKG9s5+BocMfNolmMGf43ir93xU5VPk/WCOqD6dA8RaasiHvHdNSpyeK6jtYHOOQ+/ulb2J5eMHTsJMDJf8gh5sxSkI/3ciUFNa4H6BvLCnyOOLwYPyB0ePga+T7eDqm4GMqOKfXCVvF/w4Y8CkqbZDIfh8wNY5mLZaBOtVzAEkhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(136003)(346002)(396003)(366004)(451199018)(82960400001)(5660300002)(83380400001)(186003)(478600001)(55016003)(6506007)(26005)(7696005)(71200400001)(53546011)(66556008)(9686003)(38070700005)(316002)(38100700002)(76116006)(110136005)(66446008)(41300700001)(66476007)(66946007)(8676002)(8936002)(64756008)(86362001)(52536014)(122000001)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QKmtlfJffdINrTa8xbT9XeqHTQDskJfs0E2Xn4Lt56jr77UrcFV3RqE4VXHa?=
 =?us-ascii?Q?qnv0YUERyg42lXaoxH35XXsvGvcneYonfxe0jl5D2gljvCWQA+pIuBGukoUZ?=
 =?us-ascii?Q?b070D2ugDGg7xnCAd+LM+CGYwFps3vd+AuS8qS/8xmwk++Ic7jhC3QwVXm0Y?=
 =?us-ascii?Q?PSmSl1MXDCG2XN4sBGoOmPURHWeejIgLMO6IZYoqdcgZ0ua63NXDXFksjQ7p?=
 =?us-ascii?Q?Ml5lUWVMKxaMJNQpE9S3mE7COWByMVd6Th0GHmzhtraO4Vt9jgnjuWElDLX7?=
 =?us-ascii?Q?CW2EftH5FgZTXk5SwHj4MW6TYm4ldUuoa0B45RTwm1/4OUTl92fXJFDqANR2?=
 =?us-ascii?Q?R0M0Ly/v7ycHnM1IlvdsTWCVC8xOlPVUkfdoGqLyyYdTOmdxrH5VXB9JFAlZ?=
 =?us-ascii?Q?7lf/TX8p6oh/uf7BISxE3o76P1IdhPRa1xmd/iXEGBGsNLKbU7Mn49L1yjCs?=
 =?us-ascii?Q?SXbEjcaFsKwHXVPa2iPdp63FTYEaQpMBqDdDh5I/tl2YpHEzXPAJTfHGEAxX?=
 =?us-ascii?Q?7/kNXB7T3rVMYXQQYaj6KOIX8uaylcqXxDoObQm3vJesZgHsG8Bqd2FG7ZJp?=
 =?us-ascii?Q?lZilkNLxA7eGySsNizy8lzFLwj954EcBxDxMromqhWwF+5v3XBm8eBhE/qaM?=
 =?us-ascii?Q?QvDmjF+8p9Lzf07qxKc/qtl8CcAihWWZe1EARlrM0GFkWsRlS1tQLCZKewh9?=
 =?us-ascii?Q?k7j+ORpIMRONrvnfNEoISBBof02GOc9bVeYZMOfEf7/zvGgYXSw5L4zgp+gO?=
 =?us-ascii?Q?bbuqGAeX4nN33Nz7CpO3qcUsbZrQ9SmtrKJMsZh2jVe0FKr1kZNNSw0O4h1K?=
 =?us-ascii?Q?dQ6ItoR02kLQvLu2Exdu45oNgBxWi2z8DFFq829tmeQKYiMAy8O4NZkMsOEE?=
 =?us-ascii?Q?M9m+lMBHm4GgIHCSPCWoUBdYzR4jdb0CNxCy7YuFDK6I3DXzcfLsbH6vo2dF?=
 =?us-ascii?Q?3PxZD9JX9+x11WgDxI+7miHzVrj22oBXio3uOqBbQGVVBKsPy2e9QaoYLmPB?=
 =?us-ascii?Q?q1dPT5lkOvITg0uFKuAjYIY9aI18Qs6uRgrOBcT6kaMjrmmp2chsYluow8or?=
 =?us-ascii?Q?4EO5+fjTuVeru0Be3EXcT+Z9wbWgBHoh+DylqTHbUiiuSfx9zTOCrpHGgsvN?=
 =?us-ascii?Q?3d054tyx/XgzHSkmKoE6FwojAQ/EUqtucTyJaihiFj5kTOtm5Q49PA9LIBWs?=
 =?us-ascii?Q?6Reyc+B840ref+pxk0xcyCZ6Pt/Z4QowGr1EIREQ2FydEJdx6+Y844AlxkyU?=
 =?us-ascii?Q?NrlH2CCBDHofYONJJ6DNjAOKO38GgNq8zekNgXTsXpH9YklEzEnrhp9r9As+?=
 =?us-ascii?Q?fieMflx+NVfxq+TUEKFGwV0u6jfa8/sJXK3RY9CakMPTDL5sJc/I54VSg6Vm?=
 =?us-ascii?Q?4lv1AcqpGKzMtdbDhCoAR1XNlkM0hZu9ejpNYhuQt+47eZB69b7C8KSFUGTz?=
 =?us-ascii?Q?uXALjDdquohCFVHCbM4NTdSuvFxGN7OTkH8oOJj1X3z3i0C+0+j5BFqjhQNc?=
 =?us-ascii?Q?a9R0H83uXQidw29du969ZpnekMJlEov+XVDfqCvv/+mw//BWp8uyXjWc92gZ?=
 =?us-ascii?Q?2VAyB+1vlxaPNpts6QLgpOEGOAERO9N6kHTYWaw0LvtO70MxqdHamly6rT/v?=
 =?us-ascii?Q?9w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d69ed4af-11bf-4b1c-9927-08db2605043b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 09:58:39.0451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ya+4iibIl/CoE91l80pGirlMto9hv0Wm4aCOKdrxm1o+Nt96N1SemJhf9JKXOaD0TSJorLUvC+vYAjEsypawlqwB3Dr15A/LHnDAdLl4NyVXkFREn/E6DOeTvRT9SEhL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7353
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 16 Mar 2023 15:13:55 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678960756; x=1710496756;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rBgLAX5/tv+YkFWl6V0GQePmrIOv4nizMZF982cGFEI=;
 b=Ria8A5EIE8MzfoUg6guud2Wts+zzIzUgTzlV/QvR/RmCduo45dYP/+yL
 N6aqMbuGvC30sUq9CnR4RInw4j37w1/QSNEqcSSUb81kwEzJyXCGCXT9S
 AecI5akWSpYyhm/WZZlTlYmULeRhVxS1cJxyyv2fHN/3llZ+XRHvSxshB
 6+OHrGL0G4dvdLJb+2gdmOZebPwrk7VwOHxEXLagnbB59D9zcSFxvMKC7
 RLvbODMJeonhlPqWcDWJPgTHfVnk/+t5OT6SFn6Guc1W5+XKAOKu/cxXq
 41rOEi7nhz0znWLMpft9NlQySu90hE9gwF/GzlpyjxWJcCZxzIscn/v1v
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ria8A5EI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igb: refactor
 igb_ptp_adjfine_82580 to use diff_by_scaled_ppm
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Keller, Jacob E
> Sent: Thursday, March 9, 2023 3:22 AM
> To: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igb: refactor igb_ptp_adjfine_82580 to use diff_by_scaled_ppm
>
>
>
> On 3/8/2023 2:36 AM, Andrii Staikov wrote:
> Driver's .adjfine interface functions use adjust_by_scaled_ppm and 
> diff_by_scaled_ppm introduced in commit 1060707e3809
> ("ptp: introduce helpers to adjust by scaled parts per million") to 
> calculate the required adjustment in a concise manner, but not 
> igb_ptp_adjfine_82580.
> Fix it by introducing IGB_82580_BASE_PERIODand changing function logic 
> to use diff_by_scaled_ppm.
> 
> Fixes: 1060707e3809 ("ptp: introduce helpers to adjust by scaled parts 
> per million")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
>
> Thanks for this. I missed this function when doing the refactor above.
> This change looks correct to me.
>
> I'm not sure this would qualify as a bug fix sent to net, but:
>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>
> ---
> v2: Changing target to net-queue and reflowing commit message to fit 
> 75 characters per line.
>
> The subject still says this targets net-next, but I think that's fine.
>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
>  

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
