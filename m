Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DD97B6598
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 11:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B777882219;
	Tue,  3 Oct 2023 09:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B777882219
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696325683;
	bh=Kohm1OvQSgpQoZ1mmstrYub4Pe9VN5EHfZErFAlw6jY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZLCapyQxdde+TVwp7houQDq1hrGfMN6mBA7mGrpfJmjVssS3CilwZAyfdj+7WlVIl
	 Ix86as3rvylN1da0Yp1CsxwFD7YQkO2GUZYbLaOuhkSNbPzysspEYWE+m/lapk+3Np
	 VjlNi15hsFE4DStXfBW30M5tGmzZfqbUSERWs1561OYVkR7a2hcIP5R0NDqlfQ8Qs8
	 0s+94SCTcGaEtaIWK/5NYsqW7hwPcXNzpxpEGlpH8ZmfDarir9GUmGZ9QAU5n/N7BZ
	 bosLd8ruoZ9Id8sMYP5IjmApNJSsNGPKx0zBGi/JjAOVxsHwYnHPciVlAyt+8tWuWk
	 iRhN+caJXqKtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBnK84Dp2uMv; Tue,  3 Oct 2023 09:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEEAB81FBE;
	Tue,  3 Oct 2023 09:34:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EEEAB81FBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5D01BF410
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 09:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7383861129
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 09:34:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7383861129
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTa5RvxZdKHK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 09:34:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8EC460E8B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 09:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8EC460E8B
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="362203043"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="362203043"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 02:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="727555932"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="727555932"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 02:30:39 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 02:30:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 02:30:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 02:30:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ue6KMACcGh8Va0agAd0hkeIQMhJ4HiI+RYHrIEChtwzYch/Yx+AdzQYXH7y3hh4+vLCKICWUeEAie+FUjytr5x91iDEsI9/n4JmoOviuivl7rcvqwFG1IvZ0kURSfn5ZHXZKvMhdbe7dxRLzBrEr2Mw0GTX3iJ3Tw4ElRR2AYGZwbQy89Om/bGtNyRnwQAaAIfIacYCi+RnhKcHUiqS3G9r58PqfHsooykITH6AxZxcX/5jvMSWbRi8EFQ4SYYPfoj7uD+teN7fBL5u0VVuSejURz9Anohg3DBOOPSo6rgr9vuw8RB8Sbe8MDJDxwxBcL1FfRYCl2tJ09G/QgkxKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Px3b33K8Ixy2Fysq1PJJVRIMeh6dJ3JDeMD8L5ljYto=;
 b=CcHQV6+XyIFMXcEOEnIpioG/JRUxnm7oJxdiPszii2Y+ghdamxXs5SGsuz1gldBe9wrrNPMijllxu4kG39lgNVSuSHhA5wpfxdImaGyTEzCJqE4IyNItHAg8gPaZ/p+Bgu6cpNkOU52mvODODWTVaRDS4vAKoo8oFNLJllBJPJXIS48D7Zh8MPqvVdX+lnmHi8UjBjPBUal8i3zJE7JbITrEKraZkqB13hSU+MUJ7T0DYb1OBEoCLCT99jJXc6WryHv2S9DRdC4x/6bL+Axt2HvZFWgD/WzP2oU+VuAy9cRo0Or45PZPJdv1oymRIvQMrF4U/ktYEfcG54fwXP9XvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH7PR11MB6835.namprd11.prod.outlook.com (2603:10b6:510:1ee::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.27; Tue, 3 Oct
 2023 09:30:30 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Tue, 3 Oct 2023
 09:30:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: cleanup
 ice_find_netlist_node
Thread-Index: AQHZ61Ik7as5WKIf6kKOwennUug/F7A34ROQ
Date: Tue, 3 Oct 2023 09:30:29 +0000
Message-ID: <BL0PR11MB31229189B955D84203AE84D1BDC4A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
 <20230919233435.518620-5-jacob.e.keller@intel.com>
In-Reply-To: <20230919233435.518620-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH7PR11MB6835:EE_
x-ms-office365-filtering-correlation-id: f4bff80f-848f-461f-6e35-08dbc3f3624b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +r1bpxtsDhqe1LXpWRI+PNiAh3Q4N/0FLPvM2WQFUo85++QIxthkNaOtCf0Y1cOVEwu8YZewVs7DhgFbnrJOCu+CztSmxvI4saE/Rte7JlMwNSFAi2vBTvbk0h4M6B2EHZyUAaMDilPqg39S218zZeOc7O7xLE/X7S9ZR3rO/Nl+jco3w+HS/3vm3nEBI/a+l5SRjXNw2zmY13wJSCz10PcecPKgXDIpLL73DmrwpDRg4ae3Cy2ZIHJOca9GBEA6MijkwSYFM9oTznMrgfoLAEDO5ON5Ma1VMFe+QekLsYHSmUk9eiKW0adsm+Dof3ckDEghQGjPTeP/XRR6PDtDcU3rKsHD81Lje19UNYxIC7tHIRZHEUIJycS6CvUg0jWs91lMghuEDvYCz/rPTW0taYkjMYp8p3lsjhVQvo0c002Jvf5RQoKiN9MVW+iSBXQNGFJQpPaOOgBLn+BvEZ4+lMuIYoh5N6sqMtSmwroo/HMAG1qZhgTqpawcFlGOJidIirj6whL9aiKaIE/Ax1D5MyUUZ2WcMkBf/lWKDmgP2qDe6flPpg7RjsevF3/NQv72SJP39FGBBVFhsZsWNq+LXcdMMF6Bse4SuHf1n7PrNogpOipPjv9k1TN8qNtYRyI5v4CkTYEsX6KtMZ9CwrG+gQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(2906002)(5660300002)(52536014)(4326008)(107886003)(41300700001)(8676002)(26005)(9686003)(64756008)(66446008)(76116006)(66946007)(66556008)(66476007)(316002)(54906003)(8936002)(110136005)(6506007)(83380400001)(53546011)(478600001)(82960400001)(55016003)(55236004)(966005)(71200400001)(33656002)(38070700005)(122000001)(7696005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uXASdtOpGhUz3COkpmWKiGYysDJ4vchctNZ8xySY+PkV7ydIwK5/ARdweoYm?=
 =?us-ascii?Q?HTluHrzcDPYUzKTGAdxU5ivlxPMcr/EliQOBG85Nx4KQohvEv6M2VUl6dMv1?=
 =?us-ascii?Q?r5qOM+7DJ3jVj4CLfiIRoLBHF7enUfaeRpC3TWvktlpxsCL7YhTWdYgm8CRv?=
 =?us-ascii?Q?yJ0P7gq+fIqeaUp3qCUMQ8WB5shboTXc9vu7oN1V4EHeoOmDgfAn/w8Eqt8C?=
 =?us-ascii?Q?4iwThmYTbIf36tqz2OBCB92wa+c0HjIBw7D9Ki2miWhLfTxSqnyxASB+oiLj?=
 =?us-ascii?Q?FRYFE2On9kXcw3GUyPUQGtK46OpcztrUz2+ePa9FNRmZJvAyykOE3OKhUSFX?=
 =?us-ascii?Q?ZT8aUCGnPLS4jr/MaenbkomWgkBYo6RVG01UXpNxxd9bzRP0vAwgc1L8f1ah?=
 =?us-ascii?Q?AVVp/m9YUhRTutSCFAjuezDeZAq2igRsO+pCysYB4SCsGvaKwfaA9vPKzAF8?=
 =?us-ascii?Q?cy7OGEbAJu0Q6D9u6Ie8rl1Z5rLbdSsufyZGNnn1eUIVBlf2iHsAISha34G0?=
 =?us-ascii?Q?XKlpePNtqB+6n5PAGEsAXZyb9FifHPUSvOdBjhmMYT2LKKcnp8SRqlUIqVNe?=
 =?us-ascii?Q?IBoAsJPl68NVNlvw6cmw2FtYrhZ5cxHp+PWumvSo6mlZfrK0eASZbnN/ORdX?=
 =?us-ascii?Q?u4OPVe/PazFXSrhOihot2Ln0y0X51ysldjmGtWBNdwNpaL/75RA8DeHz9FVP?=
 =?us-ascii?Q?dpay6QGKAL04Xbc63eni3/ai3YsRXj0ygGOx8L3/+FLRtIU+hlrrnXE2U/h5?=
 =?us-ascii?Q?ziivbVXae/pT3zN35FjAyrFxXnSCW/Z2GMfaEcvjBGIj0hF6EDSezEsXKShP?=
 =?us-ascii?Q?WS2WAv0Sd0XJMNLI0U1v83Da/UQ70ydEHRuJdr3tvMCoGfbNQ3ttfCx5ACQe?=
 =?us-ascii?Q?QDvcAR+8BjjvVKekhwPC7PmyPWYWP3jSwdQ+mZjQiOWv2XxPKD4yRLuFKrmi?=
 =?us-ascii?Q?Zm2izDRpN8h7FFwURk0hN2/wvLy2tCyE9QdBmf0VERxf4AHbzoQNfdRg//ol?=
 =?us-ascii?Q?EycD2YLZEyGSeLqqB3ayT6YnInaz1RWTt72bRzVTvej0SGa+22vHp1cF4Va7?=
 =?us-ascii?Q?lttBrPQtZ9reaLin/XXIsAT8t0vDRQskTzFLBEuaUGBAe2dyjKHhoBInuCDD?=
 =?us-ascii?Q?8yQYpryxWlz01llr2FrTxj8vS8OsynlMiM3ndAgmsjCchzZomMHZ8TC7KKB6?=
 =?us-ascii?Q?pOq/No0C7zNliHxgMOgzPO0rHc1zK7RmNaABc2KZiZVo7JAx1DsIMkqSWeOX?=
 =?us-ascii?Q?cfWH56+lOAj33R2SDfX8sAOWsMoalQdUakPBYtBQL3V9ShuhtAXgFQCRBNYx?=
 =?us-ascii?Q?EmMA5a4l0OIKCxZKCH96aJ4bhXvRTxu7bmg2tB9XVnmoLGsOSKJBz5zSKMb2?=
 =?us-ascii?Q?3c+30e9QuYYlubKCFYqebilzxfEynQ9WdXY/VfqgVmUOZo55eyY3GvWc+8bM?=
 =?us-ascii?Q?CMRqKhFsg3+0x4UV2rCf3f+9XEptPNjU14Bd7BwFQAR8tUY7tZIVa54YPu8/?=
 =?us-ascii?Q?L0q3l0iYdVodd9dSld6+kD0RQIVdc9EcCfgfpAFZgJeLXOGWplGT2f0CvIXP?=
 =?us-ascii?Q?eCfZN95jzp5xUrZdNwUahcPezDXl8004sQhW8YhWU/MC3Lqi8PywDYk8Azlp?=
 =?us-ascii?Q?ew=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4bff80f-848f-461f-6e35-08dbc3f3624b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 09:30:29.6084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7xT6bd+VMzZMf0XKggboxvmvTECYh6Ok8gBGOgCXoKodq2h6k+5chYNmzRwgryNQlsvCc2uXCQI58n6F/606DLCag9Jfmm9giz6yotDftX2ukqTgq7SysGwYLAOylQ2R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6835
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696325675; x=1727861675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7Tz7iZt43mlhdV1m1CzBnpUiAyZdDaX6vtvng5Xu1qQ=;
 b=EOpDgIIkBKPEyPkyB6yMR6zxSnnhJ0xsZEsm4nCmFZTN/iVeN2pxOlVg
 CxSrYzjbWaBpPzid5DFWm5qyz1NMkb9iZd7z0lernlsjHS0KNQbO+4HXE
 8Shaf0GluNqGzH+7HTuN9U0U5CDXx75rSMdbRkbcSdcoRDZlzgu91BrJB
 836y01lYr2Xunl6x1vgi16nZhoHYq1dyl1bghO/JDS20yyN4+maJFY+mL
 XuuvrFQWH6ZTJMO2/hOdn5iW4y7HwWX2jCfvDB75+lgnhLA3jBDN5TDMX
 9Bl2WZHHV6WYnkiJockKTctlsO/8GYm8jnDz5byfnlYq5JeypFMYBIThR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EOpDgIIk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: cleanup
 ice_find_netlist_node
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, September 20, 2023 5:05 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: cleanup ice_find_netlist_node
>
> The ice_find_netlist_node function was introduced in commit 8a3a565ff210
> ("ice: add admin commands to access cgu configuration"). Variations of this
> function were reviewed concurrently on both intel-wired-lan[1][2], and
> netdev [3][4]
>
> [1]: https://lore.kernel.org/intel-wired-lan/20230913204943.1051233-7-vadim.fedorenko@linux.dev/
> [2]: https://lore.kernel.org/intel-wired-lan/20230817000058.2433236-5-jacob.e.keller@intel.com/
> [3]: https://lore.kernel.org/netdev/20230918212814.435688-1-anthony.l.nguyen@intel.com/
> [4]: https://lore.kernel.org/netdev/20230913204943.1051233-7-vadim.fedorenko@linux.dev/
>
> The variant I posted had a few changes due to review feedback which were
> never incorporated into the DPLL series:
>
> * Replace the references to ancient and long removed ICE_SUCCESS and
>   ICE_ERR_DOES_NOT_EXIST status codes in the function comment.
>
> * Return -ENOENT instead of -ENOTBLK, as a more common way to indicate that
>   an entry doesn't exist.
>
> * Avoid the use of memset() and use simple static initialization for the
>   cmd variable.
>
> * Use FIELD_PREP to assign the node_type_ctx.
> 
> * Remove an unnecessary local variable to keep track of rec_node_handle,
>   just pass the node_handle pointer directly into ice_aq_get_netlist_node.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 30 ++++++++++-----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
