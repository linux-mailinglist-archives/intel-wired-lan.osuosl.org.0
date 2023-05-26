Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A5712223
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 10:25:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 40ED542C9E;
	Fri, 26 May 2023 08:25:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40ED542C9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685089509;
	bh=6XeTvrfJ8DjTUx10syWCZSZ3Hmw2xeDagxjTgX5Kq0g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9LHpV6oKuW5ouIKTT75ec46pyOBSHB2th8GkH+yQKx/XkIb0T5T6ZwXUJsTWixLVm
	 Nrktpnd6jvmzDjQgmQh3TSL2o6vxAKmMzqXw18PGIa0pK10z5HpIHgfXzD2MOGvYKJ
	 aNd0bX4067eSSse11vPIlIlQyrJPDEi+mBGC7MAkTkZpNnf0Q+5ZyS+szFWhm6VncN
	 ky4D4U8SovcH6r6G4dmCUi3dQaVXcyJr6ONkVXZm4W9q+hQEf3Q4iVZb+X3d3U1nUy
	 MFo3zVGywSqqq55ZiLpHb/3liMNDi9/7f71V+9An1DQi24fgcUVi0ofwnrIJPPnTlq
	 3ywBiC2jcWkGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RGKelohm-Noe; Fri, 26 May 2023 08:25:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A76B42CA7;
	Fri, 26 May 2023 08:25:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A76B42CA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6121BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6CAD542CA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CAD542CA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYaLwFK1J316 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 08:25:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBEAB42C9A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBEAB42C9A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 08:24:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="343646887"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="343646887"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 01:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="699346976"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="699346976"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 26 May 2023 01:24:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 01:24:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 01:24:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 26 May 2023 01:24:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 26 May 2023 01:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0y2ZjwZdR1Q5HI5hsMfcvXiiSYSBMSYn+mjR7XxseaICS3lz7Lg/tCW5GTXJLsSx7H3Fb+E0RCQPNmm+QGv7VWzj0sjH8zgVIDNyKRzRUSo6KtG/qolPIscmlAZ4qox3lgQanGqTHlJCXwkHZX0Ve4COov+QiI20X3nAvzLkfBXb1glj/tAQrvHX2PrvxTmOQLt6QpplL+g1IjVOUvOYFSswEcTCeGALFTfMDtyZAR7KgK8YscZ5NNpXbBLhXLLUnZi3/Mpwc5DmZBOIV20aJpekRv3YdmrtZyBcKX20YgTCAdBYJW360sMy+CUNsD5Xk1vHyK8UktlkLckVXh9+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9vmDLXs7kCQh+bu+CNnrrQaDNIfhqIkYaLCRyx7QpKM=;
 b=oOX6reguDBXE3X9lsBdIsePRT8takC9lIwnovSnPgf2kNDqzTj5WAHJzn6QYaPG3VpHTlmz2VjQed1NSJqa36T7dPB/trNIJdQyhoSgfQ4l5iADidHOwZLaZSeUc/YH0uP2/MwGBns09lUuyNJlpHByDKc9AkOMcUpzK9MlY7GUmSNlM8TZXmrHdXypQRCv9+vuJ4dUlyVsk30n/B+F70BidlCsve3CkkomfNFwrcci1kjZptHABQvngzwMOpp26x8qeD9eWxDkU/JlgM/3B311+JKCjtzJgAIEhJZ96XMVNH/G6qXVzn7/AQOSb/KofbOi++oBPLITgaIzQDXe2xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by CH3PR11MB8186.namprd11.prod.outlook.com (2603:10b6:610:15a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.16; Fri, 26 May
 2023 08:24:56 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::788f:25cf:e3b6:cd23%5]) with mapi id 15.20.6433.018; Fri, 26 May 2023
 08:24:56 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Gardocki, PiotrX" <piotrx.gardocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/2] iavf: fix err handling
 for MAC replace
Thread-Index: AQHZimLNoBMep1SLoUGXYY3Wjw14hK9sQi0Q
Date: Fri, 26 May 2023 08:24:55 +0000
Message-ID: <BL0PR11MB3521D19FCA5DF5F7AE18EDEF8F479@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230519150029.370332-1-piotrx.gardocki@intel.com>
 <20230519150029.370332-3-piotrx.gardocki@intel.com>
In-Reply-To: <20230519150029.370332-3-piotrx.gardocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|CH3PR11MB8186:EE_
x-ms-office365-filtering-correlation-id: 6d5e84b0-50ec-46bf-a666-08db5dc2afa1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cIC8vpMHSbbVyPwNIKxgF7NFXzaenY3BL3LJpZWKttDp/icbdWithH5GG1GpEN2+yI39rAC17cxgjGw3QTO3bfQYggmISpmbn75r3dRWtVhgeQgSYe3B3Q4SJkqIs8XQXhrXgujNz54YAHPLdppUitcETRrQ9dv432qbZk0cJ/K+YZK+zePAmxJg68gJe7GTtVdsnj0UlQ8XX4HE38G9lkCTxC4lLAf8mvUiuBHUUR33w2O72Aclk2umKo2saTOXqPFlfoddcpbRM+XVEbNEDX4vjteI8ge5H03a8J559C1t4sPbn4NnAu7cjSg3+npbaYlg7LDiVx2qdMYTgYWHNAvAPyA/oKTJt6lB4qVCqXE9gVQZxIlijhcZ5yNaD8ij4/WU4Ve3Mbc2ojh0gj4/VwPFJw41KWvAEgv5+bVjoToTu0spBVyd/9jykC4NExQ78SvPbj1Rzu2J3UqagngaMHYmxpclBFM5ugyClajozRK/vdpP19OsL2aYrFpi8Esr6zj7mjhKWZlEYCznjEvdywYiW12W/fjxHg29cFYMKv0UFUN89sfRiyJDY74CD9NmSZBuHkYOvi0A0+xot8jEWnpmaDICM/NGaO4Y2nCL2BTjZuql8bMQlriqOI75efbE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(366004)(396003)(376002)(451199021)(33656002)(86362001)(38070700005)(55016003)(4326008)(54906003)(316002)(110136005)(66946007)(66556008)(66446008)(64756008)(76116006)(66476007)(478600001)(71200400001)(7696005)(8936002)(52536014)(2906002)(5660300002)(8676002)(41300700001)(38100700002)(82960400001)(122000001)(53546011)(186003)(6506007)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?z797vSaNEo3w5OT98JIUX/wghc6tcg6e85DdgO3mqrOg7CvaCyfgoHczKN?=
 =?iso-8859-2?Q?khyknjkfBq9kX5VXn/qT+xwmtPcnDHY/Vrnp5EdhAeizDrcmAhSnCPOSqI?=
 =?iso-8859-2?Q?cTNmkf+pQd/ceuLIlMq14GDFDeoNCQIcQkbLBPs+2seEmtZjSZz0EdY7qC?=
 =?iso-8859-2?Q?lIQ8oY0UBtdjLHcBNOgWAfjvTkdNh5verm9k++AuqyXS/Jvv7G4U22SKgH?=
 =?iso-8859-2?Q?Dix0nUVpCn4Fw2QpmJivQHS1PTLIv87CwlhXc9Vi0HdSgqKmShGKLIs6si?=
 =?iso-8859-2?Q?0ZOPW3p+WtIYQ9IbVEvZlz5NSe+BFuMaYScWv1PBkjs+QG/6OHgslzoE5p?=
 =?iso-8859-2?Q?/wE/0y23zJnNrsAWn+x3fgGGKqyWLfhNJH4ShrELBoYdpXP+b2aI9vwW79?=
 =?iso-8859-2?Q?31UrYRm94AEadJj7LeFLwPerWS5uPoT+Pqf4oEDY/NMoH0hEMRcgpk/nRI?=
 =?iso-8859-2?Q?Y5XJAoW3ABYlhR4VCWkij9sZLrsGkeEWMrgMPmSgjh+/WR8mC/1TORxBPg?=
 =?iso-8859-2?Q?HR9VT/gOEuR1qiSBGxNc4zcO+QFBus6SM/eMh4e84Ujp7N0m8yqGOh3ZVp?=
 =?iso-8859-2?Q?tMPzZkGClF4oDVUKwJXPM0HVJ6MfNoqn6awNirMaH2IEvqWkGlEVHybdt6?=
 =?iso-8859-2?Q?x52zKu41TTKBuM5AELHe33VSjV22inDIzl6+T939obEFqeMKx1cZsl3UtR?=
 =?iso-8859-2?Q?+hXoh23IWMszzMekMIWmjQFdz7rnj+QDR+EaM1AJPPO8Bw88YRoYcPaLjf?=
 =?iso-8859-2?Q?l9iR3WPpaeGnsb/RJrdy6npnVxjQlPwCYFO5vsZsSG+Oec6xtYTm7UjVh7?=
 =?iso-8859-2?Q?3BMGvKhyYCxRHCVBuS5Ophn/JvdRjr8OpDseYf/i0H0UTqjgPwKydTj4Rs?=
 =?iso-8859-2?Q?IOXwhyjpOzrN6kAgkyVcjJTmVzarpwfMvF44KzAYhd+ZaIlMlMYqtQ5nZF?=
 =?iso-8859-2?Q?+NXd3oc9iS+3tZ/Fa+dbyoGmSzBnWLvCCdlCAFLJVKBHABSz3a80jw1TBN?=
 =?iso-8859-2?Q?MjiuaqktLWdZfd4zMR0WUSB4hXUerm2ajEGCklqTSgaWXxyejmf+czVYaU?=
 =?iso-8859-2?Q?tJW2OU53DAHKeuNztMaDBTM2LEn6tD/9VQQSpJ6xRRxcYJ/6AAAT9P4zw2?=
 =?iso-8859-2?Q?JlojLJFX4+t3OQ4AcC4Z61LgZ6JZS9iXiNeWgHts8sVLwqvSN/b80kp6Xy?=
 =?iso-8859-2?Q?hLfCIXHN1rUuQjNnsHisuDWeLtAts3WZWpkoHQ2j8j5s7Vc9swd+6eZojC?=
 =?iso-8859-2?Q?MPHFYpyRMvGTs4qSafJ0B5IRHEgv6gHYsVfYevGai1jdQ1b2nDTKrOxPvn?=
 =?iso-8859-2?Q?8j7q09V+uQgkyNaJUEQhBsZpn45ZyY4brMmJKFrledRibBNnpF9aFIqrDX?=
 =?iso-8859-2?Q?L89OaE5r4txy1eNqck1hsX8CDP0wMVS7re96h8XTj7UgB5mLhNouFLkAqF?=
 =?iso-8859-2?Q?6UwAdVBKx5o/4KHWDIkl5AV7b8opkS52Dg5o88LxfgXewMxcADGDhMRsFn?=
 =?iso-8859-2?Q?blL2/+4HlwwvAX8Gg+bQtsNCN2K7uwtDFzAAQiphRqvq5cR7OPxzEBOQtW?=
 =?iso-8859-2?Q?hxzqzRp6HCoMZlBTr0oHMxDb1sUq3XqKRU9Qn6U2tVVVd1+rWCBRiszlh3?=
 =?iso-8859-2?Q?75ubF5S7fGdbA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d5e84b0-50ec-46bf-a666-08db5dc2afa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2023 08:24:55.4419 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VknRDhgtTDWWK9La2rz5P1gUArCnes7HTNF3rB8zzaCCUCoC1YsBnex1vAeLNkxlq3IOJynCy0yxJJgGvjEZYJchEYKnF/nK+Ww/sC5sKRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8186
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685089499; x=1716625499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T+PkVirWbqb+wU04yaT071CBa44msCZeXSOUDhA+z3E=;
 b=C+MXwrAjreCuy0vte5Y5sG8blwZo2VTEjBEtvQOmnoJqcWvo7GmzA3o5
 SdxmY965GWkRqgykldbO+6nnMIK2GZ8PHHuRffIOwSaIA2GeTgRxC4YH2
 I5wHclun1RXjs6aenMXMxZ3hSvgE8Y3QryxV4Y9zgYxCQCnd+F9hLShJK
 wYvrm4ZZSs47RLHMU6lIVCYmzZdI7Z4eyrUu8dYl08JrkNPRAspku9bPF
 Qj2P1t3ma81qXbOUWvAP7oHXOk/COYRtWivW5XmBzHKySF2AVqs20VqoD
 PkjKLNVtkAcAe+hZemaEXqZMLAFiTay64rWLIYSJ94NHGwusMr/2e55L8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C+MXwrAj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] iavf: fix err
 handling for MAC replace
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
iotr
> Gardocki
> Sent: pi=B1tek, 19 maja 2023 17:00
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/2] iavf: fix err handling=
 for MAC
> replace
> =

> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> =

> Defer removal of current primary MAC until a replacement is successfully
> added.
> Previous implementation would left filter list with no primary MAC.
> This was found while reading the code.
> =

> The patch takes advantage of the fact that there can only be a single pri=
mary
> MAC filter at any time.
> =

> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 42 ++++++++++-----------
>  1 file changed, 19 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 888d063478a1..68aa680f7fec 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1007,40 +1007,36 @@ int iavf_replace_primary_mac(struct iavf_adapter


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
