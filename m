Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D76078FBEC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 12:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5B3C60AFB;
	Fri,  1 Sep 2023 10:50:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5B3C60AFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693565445;
	bh=Ag1fXvjreM3xOP+8WRIHZgx5x2JYnlT7PrhP/xUBVYw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zb+dP1BLt9dee8g/1aNc+hA3FHKeVxGeUBcP68PAGIEWPrMxkswPeLQjy9fd3cm8p
	 tBiKqgOkTbtnP8n1FWcvhA2muF2J87cfK4tU0i7DBn4omdAh14kh2nEl/+JKVfhDNL
	 6aPZK8zgG8x8lutXQ5iff2jIOZEvUMXlP1D3OsnBfzmPoFRZIqHgFIIBdi+B5ZBT75
	 plV8JjDAU8gz2JyAi/D7OAPDd2aBzeO8U/IJ4HlqiPuBpRonc/AqA/uswVhMTLe4KE
	 b1j2SV85NbUX1FurSjNT5h+JSanvsounx4VRFwBaBeAKUg09MBhzFjRlKYD4rC7eMj
	 ly5PTaoeHZBxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Tzi8bEsjc5A; Fri,  1 Sep 2023 10:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77ADF60BA8;
	Fri,  1 Sep 2023 10:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77ADF60BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C241C1BF4E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 10:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9015E60BA8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 10:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9015E60BA8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Is2C9pd-Ro8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 10:50:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B529C60AFD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 10:50:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B529C60AFD
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="462561527"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="462561527"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 03:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805404266"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="805404266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 03:50:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 03:50:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 03:50:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 03:50:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 03:50:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ip8pPSEEW68z7GAwVTVN++cWnv8/ox5T56LxLTMtwfYOOCKOVgLQLmHCS+UCICX/G06DhlFwi84wFHXgIjNWe1xwv/sSCOiilBMag9oY9iF2IuwGNc7rV1p+AtVdsejKZsIlHzX2zN0r/ISe7L+ZqujowT8UkgzNUdnuYpni6HU2drfDkX0dsRW5sgjg0VYuRVBAyIXvrAeWwWyC5lphkl8dY55XUMG4UWua0lsQVksZkA1Qv61DzF6R5JgGDKH7Wm7Z0TmpsqPYBGyFdFL6GpduqJLZLn4vzn+tJw3PbNmfALs6GENsOZfbUVBq6yb91jtVPGiOgK0t1Pon5GJs0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJckXGO+nzdXIef3TJ9JHOe5qoVbRIq0+N2GBC8Jv40=;
 b=dDq4R9GILIOxttCiz8Qmh8D4FB2CffrAucJ9gQkCCo8PBE8X8MvE36zjrEWCHdA6hXzvaROaPQRRxIP/jm/s6lWa1szk6Y0WLNRbeBPeE0Hz6+Q0iVZMLXmSTUIIoEdnkKflI2hgkv5v5zD0eDk/ZZjsLaN+8Lv/7HQTjhlaAPckl4+6jlYKddfUOUdOupIx3oAUDEn1w/U2ScIHYPhJNLIAPMEDOvCyLKRPh9pRjfkVlByV7Z95Spbged5hEUv6eI5ERUiZlLhhKHLJMn/UZlYHj1xj9OVdFJvltgSwhoQOokBNw/h/u/CXleRtJT1OMKT2IBjlpQ4+SNNwe7LZ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.20; Fri, 1 Sep
 2023 10:50:31 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::a135:2fd5:e14a:ae87]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::a135:2fd5:e14a:ae87%7]) with mapi id 15.20.6745.015; Fri, 1 Sep 2023
 10:50:31 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: Fix VLAN and CRC
 strip co-existence
Thread-Index: AQHZ3GGsJyYvjXZoe06sz/8Vu/Hap7AFsRLw
Date: Fri, 1 Sep 2023 10:50:31 +0000
Message-ID: <PH0PR11MB57823008FBDCD411827287A7FDE4A@PH0PR11MB5782.namprd11.prod.outlook.com>
References: <20230831231859.3480459-1-ahmed.zaki@intel.com>
 <20230831231859.3480459-4-ahmed.zaki@intel.com>
In-Reply-To: <20230831231859.3480459-4-ahmed.zaki@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5782:EE_|SA1PR11MB6733:EE_
x-ms-office365-filtering-correlation-id: eca6c083-c0a8-467f-5a5b-08dbaad94308
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BNhGaUaSIqnsR+OIqZPdpr5GZC8rFwheBdOeJUdkI8BMvj8PELtyjDI52ghC5QtoG8+xTssXkAy+dTu0QXbcRKHndaGX9dbqjYGmWPwj1gDTq6q4AFrGqBFqGD48w99fY7lYsTKQH0ipU2C/4fKCU8Jif51JbU9cq+fl78PLT1IABVzEOmumiYx3tj217kZ7o8gXt55VaL+ZP5H9ZVR3VVdEnDbRRPBlhBPpMBzG2rTOHFkSMlNvG989LlW3aECyZn4K1zNb0m7PnthWToQBDmiclYtl59aJYZh93UeC/hgfiFTu1xaIEkw6VbrpalKqTBfklWWAllaj1Ke8ydemDo4ECtmVkIzb6EFchT6WrbBJKwWNpe1+i0L2AoNLXJex2+stFOM2tRYujr9gETpHlr4T+c8ULFciTyJzJjTHbb/MWxtrDj5nBfB8mjfN3wnlMKbiOheqjKl52rP0EIbZTVWvgSWHthfLTI8lYrT7gG0P4bC6noDr73+Xm9KDXSA6HZegoFcgq46O+Vf0458omzqS0saOLJ6Ssx5JcRF5vjcyR1ECVOMw7gxfZArqunVym1WbTfD5I+gJaJrszmaOD1kIJfBxPmP1ltAvhanE3HQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199024)(1800799009)(186009)(38100700002)(2906002)(33656002)(5660300002)(86362001)(52536014)(82960400001)(38070700005)(122000001)(55016003)(4326008)(8676002)(966005)(64756008)(66556008)(66574015)(41300700001)(8936002)(83380400001)(66446008)(53546011)(6506007)(9686003)(26005)(316002)(107886003)(54906003)(7696005)(76116006)(66946007)(66476007)(478600001)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?NTMYbd4ySmG54iTHlxfj+sr43lcRCHpDh0gJcjjIp6bCGx4tE7iqNDlSVP?=
 =?iso-8859-2?Q?CqU8mBIAH2SjDjD4IgIp8uaC36niskS+qFfPzEqoj7O4+PxBC9XfGbbJmr?=
 =?iso-8859-2?Q?Otj7KONyQGtOvSoN05bM9D3rGQWmDRMvsU7IWCqHQDeHz8JR28AEo80JLI?=
 =?iso-8859-2?Q?6W88F3vdzyDGOQCZiImyTkK4JY1iWDmfnstQav5GOVSUjlyzg2Bv/jNr4q?=
 =?iso-8859-2?Q?yAmnu3EJEuL597WU5jJgVpicMNWzddbG2bgCDalqFnwlsENYzFezKCbcmE?=
 =?iso-8859-2?Q?bMzhxSRk6/Xcdmdabd7EpoSabzdxY7yf2WJ+2ZkLdmYLkfI5naqzMvxgEh?=
 =?iso-8859-2?Q?QcJ4xHpOap+I/zC+OuAFXx2VrUVcZOCPdtFUZPUMYNZe2Kl55lITwsWplM?=
 =?iso-8859-2?Q?ONEoLrKN+flGVuHJdP7wSbF50PWzSjrX2V95eJR7ZYhsLjM5CV+Ql2Qwaa?=
 =?iso-8859-2?Q?aHIX6izhcTQ87S/1K++PoMv6QN5hL9YIp+T1tzvxxre1k3CqBE9U+hgTbB?=
 =?iso-8859-2?Q?+OkuPCarSna5lpX/ZDMBKE01fMxHgvDQCBkF0kXsuUlm0wugsW/EYmNTv3?=
 =?iso-8859-2?Q?u65RF1eX8CXB3Ca5ScKBTVZE5Uj9cwHZZXIaqCFwVkERjKDZQZK6AoVWT4?=
 =?iso-8859-2?Q?7MIVo/tMfp+X20ZFedOnTls6faVX4tJu10LUugKpQNlYZdbfKBQaBllmp6?=
 =?iso-8859-2?Q?CXx48zrTPhaRlTE83EK8o5GOpYNu0kRzf0vw3tZO3by4XaYqpW0ux5m2/z?=
 =?iso-8859-2?Q?ggvjKeo+5bogoyYrCkb9bC0IE0bmKHQTrc6CMBEHrL5El/6DPDaf9O417z?=
 =?iso-8859-2?Q?LBTILQIBxEg1ilW4QGX5Zhgh6UNEo1Qepe6mhCfW9zrnwj8xhTROXqpaWX?=
 =?iso-8859-2?Q?dCnC2fTmWQIsgJRb/7zszMNDn/GockF+V0w/oj1UeZ02V6wvzGfgEtUhoh?=
 =?iso-8859-2?Q?3KESMSGgfbPESGqKOWzXp6eTDMmeLJNR6L/Em1EbmQlPuC+VxS4uEV6ZtG?=
 =?iso-8859-2?Q?00y+NF2a/9EwYMrDgNJCwDwKJmQuNFF3rBE7X2IppIvcWsaRnxXcu4fFFq?=
 =?iso-8859-2?Q?35C/idKBcZ365hoY6na2Xl05qA3N4CZJkBebTuyXq2ZbFSrjOew/qnZc5Y?=
 =?iso-8859-2?Q?uCzTRrQyF2/GIjsTLekp+ImC/EbnQALHMTkHV8RjxirOng7SKA3+YDb9XD?=
 =?iso-8859-2?Q?wsgTJmidwZtpmxrd9sOnWM7SnXRSDSctE5TQ+HjMIrk4DFPPdYxsq1kMv7?=
 =?iso-8859-2?Q?JOwEO+FzSl2txi80/++K8jmqzD0qtUiAZJIu/R8cUDIGN8zhlOYOjHEqVt?=
 =?iso-8859-2?Q?GHWd/pDGxIDPrQd++gdV7oH150itr/Pmi2lHVXAUXOO0Huf10LV/wVxuwO?=
 =?iso-8859-2?Q?oqsVzVQA6HWqvxlAQk2d+ewFakVDRdTZz3Mj/C77xU73+LuN4lntfwm/gh?=
 =?iso-8859-2?Q?V1S82Eg0iywY8yOi2Nj12t68I93m97zKJR52PJg9rgX82+Aff7omMvnWht?=
 =?iso-8859-2?Q?mMeNWAG1GYLhNH76Z1vWWHXAlKD7sr5D4SN47wdMCgkeGQMP2aA7RnZKZ/?=
 =?iso-8859-2?Q?/Khwsp2EkFYwS7TQ/wZq5QeBeZpANbJOWh79P8v8iN/LZONN27hKamc7n7?=
 =?iso-8859-2?Q?TUYN4wBifRlTCDp10e0cgMH07I+M7YxJag?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eca6c083-c0a8-467f-5a5b-08dbaad94308
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2023 10:50:31.1821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bDsEbbDBOFEspIahZMkAUWxufGmd9iT8c2XNJRoGLJB68pLOoL9yeeh89OAxLVkHB9cKsLrfDeoRDbqdUaIWhSUgy6+FxyOegb0fRyKhMJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6733
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693565436; x=1725101436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/gZjHmkOv0ig93E/izfpO/dljFKvBTFqZyf+vtdQhew=;
 b=n3vf9Vn0ehhUvNuZbAftsIRWQQddexC0FhxCES0vmdMuaq+YSNfYT6LC
 Fqc5ZM+/Pwt+ePrIlUYcf1AE4aicETJiCxPNvrUPUPrOteDpwbGYJRL+6
 +8282GADIA2mCDxWykPcfKRRt29sQRWmG6OPvpsr2W3vi2pMvcdRXfzEf
 Rg3Y3AP3+QhIiLD9IORedayrpzPhtem9MQRP1naWERGVkcB/9251iNZ94
 9EjHxy6QBXhHR4PePu6OKJ89waGDSKUa9llThWf+7+9qp7pKzHXTmnCc8
 5cKfKBYJfxQntNM0P2XWVWsRzOCXwxBpukzrQSFkITBvcUODckP+frog8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n3vf9Vn0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: "Wang, Haiyue" <haiyue.wang@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: pi=B1tek, 1 wrze=B6nia 2023 01:19
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wang, Haiyue <haiyue.wang@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: Fix VLAN and CRC =
strip
> co-existence
> =

> From: Haiyue Wang <haiyue.wang@intel.com>
> =

> When VLAN strip is enabled, the CRC strip should not be allowed to be
> disabled. And when CRC strip is disabled, the VLAN strip should not be
> allowed to be enabled.
> =

> It needs to check CRC strip disable setting parameter firstly before
> configuring the Rx/Tx queues, otherwise, in current error handling,
> the already set Tx queue context doesn't rollback correctly, it will
> cause the Tx queue setup failure next time:
> "Failed to set LAN Tx queue context"
> =

> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  3 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 62 ++++++++++++++++---
>  2 files changed, 56 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 48fea6fa0362..31a082e8a827 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -123,6 +123,9 @@ struct ice_vf {
>  	u8 num_req_qs;			/* num of queue pairs
> requested by VF */
>  	u16 num_mac;
>  	u16 num_vf_qs;			/* num of queue configured
> per VF */
> +	u8 vlan_strip_ena;		/* Outer and Inner VLAN strip enable
> */
> +#define ICE_INNER_VLAN_STRIP_ENA	BIT(0)
> +#define ICE_OUTER_VLAN_STRIP_ENA	BIT(1)
>  	struct ice_mdd_vf_events mdd_rx_events;
>  	struct ice_mdd_vf_events mdd_tx_events;
>  	DECLARE_BITMAP(opcodes_allowlist, VIRTCHNL_OP_MAX);
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index c0c3e524c523..602c18e823c0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -1623,6 +1623,15 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  		goto error_param;
>  	}
> =

> +	for (i =3D 0; i < qci->num_queue_pairs; i++) {
> +		if (!qci->qpair[i].rxq.crc_disable)
> +			continue;
> +
> +		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC) ||
> +		    vf->vlan_strip_ena)
> +			goto error_param;
> +	}
> +
>  	for (i =3D 0; i < qci->num_queue_pairs; i++) {
>  		qpi =3D &qci->qpair[i];
>  		if (qpi->txq.vsi_id !=3D qci->vsi_id ||
> @@ -1669,11 +1678,6 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8
> *msg)
>  			vsi->rx_rings[i]->dma =3D qpi->rxq.dma_ring_addr;
>  			vsi->rx_rings[i]->count =3D qpi->rxq.ring_len;
> =

> -			if (qpi->rxq.crc_disable &&
> -			    !(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC))
> {
> -				goto error_param;
> -			}
> -
>  			if (qpi->rxq.crc_disable)
>  				vsi->rx_rings[q_idx]->flags |=3D
>  					ICE_RX_FLAGS_CRC_STRIP_DIS;
> @@ -2425,6 +2429,19 @@ static int ice_vc_remove_vlan_msg(struct ice_vf
> *vf, u8 *msg)
>  	return ice_vc_process_vlan_msg(vf, msg, false);
>  }
> =

> +/**
> + * ice_vsi_is_rxq_crc_strip_dis - check if Rx queue CRC strip is disable=
d or not
> + * @vsi: pointer to the VF VSI info
> + */
> +static bool ice_vsi_is_rxq_crc_strip_dis(struct ice_vsi *vsi)
> +{
> +	for (u16 i =3D 0; i < vsi->alloc_rxq; i++)

Can we use ice_for_each_rxq here?

> +		if (vsi->rx_rings[i]->flags & ICE_RX_FLAGS_CRC_STRIP_DIS)
> +			return true;
> +
> +	return false;
> +}
> +
>  /**
>   * ice_vc_ena_vlan_stripping
>   * @vf: pointer to the VF info
> @@ -2454,6 +2471,8 @@ static int ice_vc_ena_vlan_stripping(struct ice_vf
> *vf)
> =

>  	if (vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q))
>  		v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> +	else
> +		vf->vlan_strip_ena |=3D ICE_INNER_VLAN_STRIP_ENA;
> =

>  error_param:
>  	return ice_vc_send_msg_to_vf(vf,
> VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
> @@ -2489,6 +2508,8 @@ static int ice_vc_dis_vlan_stripping(struct ice_vf
> *vf)
> =

>  	if (vsi->inner_vlan_ops.dis_stripping(vsi))
>  		v_ret =3D VIRTCHNL_STATUS_ERR_PARAM;
> +	else
> +		vf->vlan_strip_ena &=3D ~ICE_INNER_VLAN_STRIP_ENA;
> =

>  error_param:
>  	return ice_vc_send_msg_to_vf(vf,
> VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
> @@ -2664,6 +2685,8 @@ static int ice_vf_init_vlan_stripping(struct ice_vf
> *vf)
>  {
>  	struct ice_vsi *vsi =3D ice_get_vf_vsi(vf);
> =

> +	vf->vlan_strip_ena =3D 0;
> +
>  	if (!vsi)
>  		return -EINVAL;
> =

> @@ -2673,10 +2696,16 @@ static int ice_vf_init_vlan_stripping(struct ice_=
vf
> *vf)
>  	if (ice_vf_is_port_vlan_ena(vf) && !ice_is_dvm_ena(&vsi->back->hw))
>  		return 0;
> =

> -	if (ice_vf_vlan_offload_ena(vf->driver_caps))
> -		return vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
> -	else
> -		return vsi->inner_vlan_ops.dis_stripping(vsi);
> +	if (ice_vf_vlan_offload_ena(vf->driver_caps)) {
> +		int err;
> +
> +		err =3D vsi->inner_vlan_ops.ena_stripping(vsi, ETH_P_8021Q);
> +		if (!err)
> +			vf->vlan_strip_ena |=3D ICE_INNER_VLAN_STRIP_ENA;
> +		return err;
> +	}
> +
> +	return vsi->inner_vlan_ops.dis_stripping(vsi);
>  }
> =

>  static u16 ice_vc_get_max_vlan_fltrs(struct ice_vf *vf)
> @@ -3450,6 +3479,11 @@ static int
> ice_vc_ena_vlan_stripping_v2_msg(struct ice_vf *vf, u8 *msg)
>  		goto out;
>  	}
> =

> +	if (ice_vsi_is_rxq_crc_strip_dis(vsi)) {
> +		v_ret =3D VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> +		goto out;
> +	}
> +
>  	ethertype_setting =3D strip_msg->outer_ethertype_setting;
>  	if (ethertype_setting) {
>  		if (ice_vc_ena_vlan_offload(vsi,
> @@ -3470,6 +3504,8 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct
> ice_vf *vf, u8 *msg)
>  			 * enabled, is extracted in L2TAG1.
>  			 */
>  			ice_vsi_update_l2tsel(vsi, l2tsel);
> +
> +			vf->vlan_strip_ena |=3D ICE_OUTER_VLAN_STRIP_ENA;
>  		}
>  	}
> =

> @@ -3481,6 +3517,9 @@ static int ice_vc_ena_vlan_stripping_v2_msg(struct
> ice_vf *vf, u8 *msg)
>  		goto out;
>  	}
> =

> +	if (ethertype_setting)
> +		vf->vlan_strip_ena |=3D ICE_INNER_VLAN_STRIP_ENA;
> +
>  out:
>  	return ice_vc_send_msg_to_vf(vf,
> VIRTCHNL_OP_ENABLE_VLAN_STRIPPING_V2,
>  				     v_ret, NULL, 0);
> @@ -3542,6 +3581,8 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct
> ice_vf *vf, u8 *msg)
>  			 * in L2TAG1.
>  			 */
>  			ice_vsi_update_l2tsel(vsi, l2tsel);
> +
> +			vf->vlan_strip_ena &=3D
> ~ICE_OUTER_VLAN_STRIP_ENA;
>  		}
>  	}
> =

> @@ -3551,6 +3592,9 @@ static int ice_vc_dis_vlan_stripping_v2_msg(struct
> ice_vf *vf, u8 *msg)
>  		goto out;
>  	}
> =

> +	if (ethertype_setting)
> +		vf->vlan_strip_ena &=3D ~ICE_INNER_VLAN_STRIP_ENA;
> +
>  out:
>  	return ice_vc_send_msg_to_vf(vf,
> VIRTCHNL_OP_DISABLE_VLAN_STRIPPING_V2,
>  				     v_ret, NULL, 0);
> --
> 2.34.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
