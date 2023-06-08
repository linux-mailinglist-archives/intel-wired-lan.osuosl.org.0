Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D70F727FB3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 14:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39F3341F81;
	Thu,  8 Jun 2023 12:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39F3341F81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686226462;
	bh=JDEAF0k+y1uFALn+8Fm2H9VUvBYhoACq0AYJ3s/hVws=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tqbWt7RIrU0cvrqLlbrKF4/jOT14/1ifrGFRkGL8gQZkHx2YMdr3zZI9xSK12OXPl
	 rrN/v9iGZTTt2OMFWfjENu4B7bE6/r5fqVOA4T3ySTLy9WmJTGeGm/QZvB9Yr5zvDC
	 cZDYSybWy4FqhsImafVyf9ybsNpM/i4GnkjUIWCKCPa2ifI4RwlxYaZQ1XxaYU4Pxj
	 Ua/Fp4NzPF6HvakM1vD09lOYIHR1obDzHCQPMpJ0+O28lnlbhv+7Xs5w5cyPv1iS2z
	 LS7IXxyJzQV7MeJwoNqJNYcbMrKPypAa69mmKBVoGybHfT7g8JEbigUg2ZoIlhNJoU
	 Al4yJfQCYFJOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62_fCb8S9Hfr; Thu,  8 Jun 2023 12:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB4C341F60;
	Thu,  8 Jun 2023 12:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB4C341F60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 549C31BF35A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C0206145A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C0206145A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6gLZkKF7rr6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 12:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E9066144A
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E9066144A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 12:14:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="337646002"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="337646002"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 05:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="799805679"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="799805679"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2023 05:14:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 05:14:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 05:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dhYgwdcpuMkijxZWowpIILGAbxlLR2euFPVN60HXHk62/SVtGVyHvPz5kCIe1121HT7wUwrp5H7ox9pTINCryF80aJHABIIrxfnt7XLl8ZWL4khc/kMwwtXVONvTDqeW2QHFI0KlrMu0eQf3MCcJtSsmNriWrujLUpdD33HF7C/bNrLKYK8ccDQ1VVL4mh4m2WZ4xoLaOpHC2NVdXypLfkvn2DP6nYvf+8l9mzrbOl72tlKxbfHbAz+Uf+CPyRgmQjHImarhrtBArhtUnD5AV3l8ifQ+uy1wZzEnFyM6srIRKg1/FVBlBhmfZmNr67TCCYMkQh7HMlpklqEyY14ByQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fnbC4r6BH05+uIUQkLf1a3aUfk0y96E6Q8k9HKUrJxU=;
 b=JmAVcDeIycG+r3M5wmVK2hqb+9FCIIvuMd0T3D0f0IGa3rIsover7mNf12MRnMtSgy9oqJLl7ZnnnS+qH8njHCcT/PRIvaQ06aS8EPFHDFSOX5xSzdrXSxfTiWgPcd+P1hMku5ZtMMp+fajYaVi5RB6EKTo3bi+hIVE9JGW2VEswG0plsvxcQjhqdC063A5AnT6YhlWa1sp71rJ0VaIq/YaAHTCECizpw9bnlqEYLoP+N2g/Qz4OUYwuWJm3++cGWf+2oO2UwnaSR1h+LY/tWPGrOPDozN6f6hcq9QgpG0TX8OA3i6eLF5UplO2sti0HBQy3sHZsO2mdEuMaFZhKpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by MW4PR11MB5775.namprd11.prod.outlook.com (2603:10b6:303:181::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 12:14:06 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 12:14:05 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: trigger
 PFINT_OICR_TSYN_TX interrupt instead of polling
Thread-Index: AQHZlM5XLvMP9+u+2Umrx4GV+DGxm6+A0j4A
Date: Thu, 8 Jun 2023 12:14:05 +0000
Message-ID: <BN9PR11MB53543398C4615B66D29E97258050A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
 <20230601211507.707619-5-jacob.e.keller@intel.com>
In-Reply-To: <20230601211507.707619-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|MW4PR11MB5775:EE_
x-ms-office365-filtering-correlation-id: 0521eaaf-90be-43ea-5d77-08db6819daeb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MfIXYfX79MSgTnMoY2cax7X1QaBY0hui03raE0tgadF0ZJjKM4TmRX2O53/W8d6tO+G4ZQyH/DFuPVGg/CwPuWndag7K1MbcoEWcOWQXRf7j+qPIsaRoP9bNwdzizzaLTeXJNonL2RLCVsR/GuBmN89/5bGDjx5EHL7k0wYDmgnfB9+3KCwufuyAp3w2UeHwfOeO2q/MQkBElCIrWjFwglQgqvLT2iiQW9yD+9dyKiDt6szzQtt7cBDehMjjuFTFaNvRB5i+S/ZUtj3aS8c8cVP25lUPfybqFHbNWlLMxWt91RPBlM3z6b0PLcwfLpHOFDnSOOUXQg8RfGTPooApu+yOIUip5MgaIR8WmoodlqO9H2AgxPnKaNTn1lK68DuszsPAzAVnLUYWxFcYl6KX5q2zUHLi2YyHl7CYIp2lGPtYetlwMECNwaDu0UCjBxRecOoSbKCLFewEWGVqPwhr+rEwSIQU4zTx0/rHkC5gALsbyJ03fjSmBeoBksACjICQXSqCvYtLpsVAbEl2GqGwUf3oOGz3K4C4bFAHVoFiThpb7s5hiCCLR7xa0aIjPjxxDgh3hhFMWlUhJtg56+2r+T3sHQpUSnhLqxKOy322AC0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(136003)(346002)(366004)(39860400002)(451199021)(5660300002)(33656002)(38070700005)(2906002)(52536014)(86362001)(55016003)(71200400001)(966005)(83380400001)(53546011)(9686003)(26005)(6506007)(82960400001)(316002)(478600001)(7696005)(110136005)(64756008)(66946007)(38100700002)(41300700001)(66446008)(6636002)(76116006)(186003)(122000001)(66556008)(66476007)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CYYJOv8KhT3k4W5fyghIxH5Lr+hWs66qxfnyekZf+NDSGM0SEHyntvnEVPGA?=
 =?us-ascii?Q?QVLTZUrw4y9jUa71WpGGrqif7fXgs9175UCAvdV7gGGhWXoWjTksCjhcWSlg?=
 =?us-ascii?Q?Ohy/GS1tikE0hpCmHPdRCfCI/WmmbiRQHl256+DTO76axPzOoLu0j/cr5OY4?=
 =?us-ascii?Q?6n7rdjBPUbvmvx3smDoliW0GtFCZHak8iy4c7SJcH1IESROdi5c5ffE6f55d?=
 =?us-ascii?Q?Gdv41hDoWAsGjZVrRVk41KGNtOEeCkiow4vOJnp+nI83zdVKJAgeXHKNgdTv?=
 =?us-ascii?Q?+XVl/RuaWawB//4RxIiteGLgXs+GnrsOEwevUQS1tKiG6AvkFptYz6EMiLi7?=
 =?us-ascii?Q?rKCc0GHito4DSksBPXiLs0/ltDJKQhzLTypPseeV3m9vReOff6kGPwRrWGLF?=
 =?us-ascii?Q?k/JnOkbALqhlpRZI1n8nJa/Hh89NDaZzxiC9XDOpLJds9Tvwn7BOTKjdEa2e?=
 =?us-ascii?Q?3yI/3Z2dZG6zUfMMv9YSDs2E8eFlk28v2R95J1R2287XddHJYh5SYNJ6J5Rk?=
 =?us-ascii?Q?2hP2PRPw1Hsj8BYA7xWoIGU1TxxlWmBpvji3eup56Jm0NWmXuFu+KvQR+bwL?=
 =?us-ascii?Q?HhOKZPFLLchOOtHw77hxhnpE7uAPwlblwtv4qxmM7s5QBbEC0A7HveZ/73eU?=
 =?us-ascii?Q?jAYm/qMsgNtRPVdcrF+ptk+VuWyExX8dTDBN0KYe856syCEbLyPUXz6B1zLD?=
 =?us-ascii?Q?mVgUb4nVGk3EiTBz0+gMYRv5N3RLOpAW5WOyymK647ouBFWrSZjIWQblsMXU?=
 =?us-ascii?Q?Gta7nPYscr10/m6eklpYPOU8RcCACISOsxTN9nuvJ7/coBrvBx/h1DH9wbOp?=
 =?us-ascii?Q?bgmpr/Lt/ve20FxJY5OZF+NMBvbWj2/2NZK1SBBPCUQ4fp0iqrnz/I1W4uBx?=
 =?us-ascii?Q?hDjI+361VFYLy3U6fJy9YcCKne022lXoZfE7Q6yJDXMmIlxbuuRwI2X0fycg?=
 =?us-ascii?Q?KFsw/WNjdBEIaFRUPEJKEE2fRA9HGY0KVnrwIVbD8V7GNYdcAcn2mAKIN2zv?=
 =?us-ascii?Q?dR13sqDCZBv7DCAC4zcB8g5s+xUMmR15HDOkB90u7PECrRn3OdlLkXtBUE+9?=
 =?us-ascii?Q?LE4GcLlEDs6C/x96dfe/4s1f/umMmEzvBE6Ap/s4yjPX6Fb9sXHtjxlmfBgK?=
 =?us-ascii?Q?N+F5bEPFezoEzoJ6gsIT2tq9C0rWt+3hNd9LEJ6U9jx/Tgzu+Rz6ECExp3Zl?=
 =?us-ascii?Q?hZvOvzsinvm8exoGeBW2WmnOIcIbZPig9anWXKF/xi0LPyHB1vHQj777mSP8?=
 =?us-ascii?Q?D6cfnrztUH5N4XCxoG/llxXU4HocbOxZ+0TRzVJ3z7kOmYcPDvRsTEFlNiTZ?=
 =?us-ascii?Q?e5pa7q0DiUZGNgZOFheOjFD9D6wNutXynTJeVtw/iob8SbAW95lObxqjN9Hp?=
 =?us-ascii?Q?DXcjiS8BcgMB7dIlaNTA3E8Hja9+dufEYR368KPrQ4ujEZDwp3uHFS2iqq+d?=
 =?us-ascii?Q?FPp4Epbnmro59NhFUBNMrmgqxT9jnBmVPnjRSuXfwdnTa4F1XfJBJGs8bjD1?=
 =?us-ascii?Q?HQkR7v0XxCV0v2SFBUp2D1CjtMKa6Whim756lUUrwEO8mC8SoDYYacD/OxvO?=
 =?us-ascii?Q?roRVXVQsD4rn/jIZw4Nqrgf0FCYZkH9CNfvf+jHj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0521eaaf-90be-43ea-5d77-08db6819daeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2023 12:14:05.9261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X4HyhXO8jZlgQfI/h2smPjoAJG4hGNVuaQzYpcNXd58WD8MEjWj/XvR7gHoysMVIL1vEjYZ/PuAiBmFqoH8jUlHtQlRjEBRa4v/JgbGdqe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5775
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686226454; x=1717762454;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XDu+Uh40ESP7C4wEDDmc5ySAqBZhO12plx4v4I60OEQ=;
 b=DV9ViUdsMl6YOhUtDVzWGCE9EOlpjS9YYIFrjI1WRG10b2QT2HYNEkfw
 Fq0I1CWlhsfELbxY2sIirpEX9XH3mM81dn+z1G1E3FYEuDZAg/L2ign/8
 0FDSrSCgHI9iix6owrzWGItjGTlCM1vTHMJ059DWDrHUleTkCgHsqXNPT
 8wdYVJJEtYq0y++ATyAKP9grh2WX9eugRKkSJ/1W4shy6S6nb337jJ0Of
 QtK/v9HvYhiLQoz/Hm7EKMPu+/6HmeB2zwvz8HtAtCvdIRKyAs0mQRvSd
 52tGb8HgRxye3CAVstMtVJE6hNQYhtL3QpMxdDfnj4Bn2FQC/rqepaPU9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DV9ViUds
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: trigger
 PFINT_OICR_TSYN_TX interrupt instead of polling
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Friday, June 2, 2023 2:45 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: trigger PFINT_OICR_TSYN_TX interrupt instead of polling
>
> In ice_misc_intr_thread_fn(), if we do not complete all Tx timestamp work, the thread function will poll continuously forever.
>
> For E822 hardware, this wastes time as the return value from
> ice_ptp_process_ts() is accurate and always reports correctly that the PHY actually has new timestamp data.
>
> In addition, if we receive enough timestamps with the right pacing, we may never exit this polling. Should this occur, other tasks handled by the
> ice_misc_intr_thread_fn() will never be processed.
>
> Fix this by instead writing to PFINT_OICR, causing an emulated interrupt to be triggered immediately. This does take slightly more processing than just re-checking the timestamps. However, it allows all of the other interrupt causes a chance to be processed first in the hard IRQ function.
>
> Note that the OICR interrupt is configured to be throttled  to no more than once every 124 microseconds. This gives an effective interrupt rate of
> ~8000 interrupts per second. This should thus not cause a significant increase in overall CPU usage when compared to sleeping.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
