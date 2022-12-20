Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F47652990
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 00:02:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1641F60AE4;
	Tue, 20 Dec 2022 23:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1641F60AE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671577324;
	bh=tzPNB+6n83G5priqlXjFgLSZgGMzD26eyEXxmpFKG/I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yc3isHhBHJp6gFkp4giJgdOWsOqVxCsvW3i7Px2hY6qo7TFUkqy+pUZFfupn077AP
	 8Q6XARph2T6JIwUJZonk1XO8Q8jIITQcpKPdM2QfpHakEIKhQ5F2il+tAgZHb4JPyi
	 EEnPqAwXLl2Ic+8yY/hohXMCxHt0ASsUEfuno8j+oe+BPJ4dubPws0FtDeRFPRW49Q
	 qgA0Edu03dMGUZthBUMZzL6awdfKmw/8Wl0l7Ox/HliUKepr8j1kPpkIwjtJWolT17
	 D1AmiJI9sP+jNTlYQvnO4yj4vGchdJ8bwOo+GyyF5Yv/FZ3oXE+u7FzxkYcUbPdP8s
	 py47TBiHoGrYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3iyzfliNpWax; Tue, 20 Dec 2022 23:02:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1895660804;
	Tue, 20 Dec 2022 23:02:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1895660804
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 796671BF25B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 523F540239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 523F540239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cRtwQKovTLuT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Dec 2022 23:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 838CE4013F
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 838CE4013F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 23:01:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299410242"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="299410242"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 15:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="775471725"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="775471725"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 20 Dec 2022 15:01:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 15:01:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 15:01:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 15:01:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 20 Dec 2022 15:01:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpHMs4EwZdf4LoWEBV6/BDfXl0FpH/bHHl/foOdFFMKQfRmCE5cU7x4jkZohiMCBPZh19OOl54Rx+aIlvBvi08t9so6W/R8ZZJDYmKSmbDCiCAtw27o+8+iJ+7RXSj59bRQCVwMoEbAES5qif1N3dVuh8uw4LVkFOVIOueBhgIpHXY2GmmEUdVhO8znlM+rX6MeOs850vdkzxzK/wVYO6GWPBb9g1NzCSNwAYAJNMfCut3m1wgYPOBfDgTKspRoiY4Hvli68DxHnooMMZhc0/aA05W5rFI4AlC5uf8UfTIOXrVQHUDy3CjBNc6muSbz1LnDyoooL7sQA3UZSt2R25Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=naWq3vlBy5strkHOg+OkS1GTUJqCTH9B7XG+X2RZF+0=;
 b=erhPsnKn1su2DBfOwXhNopX824GA0Jb8DrNmOn8kfqdfg+DGj3KUqmh3OlKxAb0X/ipyJiETFTQy2lTITO/SJypgHuLWJrCdzKqRhUXTDdjcISL5cv/IRYilzwPlKf0cnfJxxTX0+XNEhyUDZ4u9ES6rkV4hzjak6VoTLCalRTbkCfr9JYQDuHUAlHrhRLAsmTUuNXP9GaMWLc/iUgwSP/sFcTSGaGp5PoJHiXVpRfzjt0lyEG+nRiZ76IU9CI1QupYqvDwM/8DgLba3EU9IHISn0h4x/67QUYE88avnmxOamn6hLHRZrIzQTHAUkGHW5eCC+W+g+UrXZ62IsnI6PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by IA0PR11MB7910.namprd11.prod.outlook.com (2603:10b6:208:40d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 23:01:49 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::fc05:5122:9f5a:ea34]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::fc05:5122:9f5a:ea34%7]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 23:01:49 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Czapla, SebastianX" <sebastianx.czapla@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ixgbe: Filter out spurious
 link up indication
Thread-Index: AQHZDkQDNxG8fjtDuEKozHnBtQwB5K53bhdQ
Date: Tue, 20 Dec 2022 23:01:49 +0000
Message-ID: <CO1PR11MB5028C91B6505AB72311BCFAEA0EA9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20221212095938.2477336-1-sebastianx.czapla@intel.com>
In-Reply-To: <20221212095938.2477336-1-sebastianx.czapla@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|IA0PR11MB7910:EE_
x-ms-office365-filtering-correlation-id: 38300465-ee76-4a83-cd7c-08dae2de2cfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fTJJpbATv/mRCZRn+eceMBDoHNVmazJ3xFoU4LcVjUYxqLese6JAfODulJGEgPugb5HoaCR257l8jeZx7slEULxxGbDWSOy5U+8aMc5lQCIHBIuBf3g5bBaWBj7Io/s4UMxJd0cHTHWHBx2ClPbAFjDsTIViBsuYm8DpN2WLnmCgzbxSK9uCC6EmxUWQFPCpgiL7e86qDaN/56MPyp92jD8ROpLpXzexdY1pcNaWfJwbo1sPt6g1y8dD3qc4Ep0mmnrGYtrN7AcBfy14+Fm0AFflv85k3BSrGfT7Yilss5CAV42F9KpxcM8I5JRMEL81cpHu9kn85OgEkiMb43vNsrnRBKgvqsjoG0Fap3CXfOJenM9nIqPz61EWwnUQ2PZOmj7mO+hPUe51pkUhmlHyEv5oawpK1Qgn4tiam5doRxsIBC+7t7mwXbPFVo4HqUxw7RFCB8z/NDtztfQKy/dcNNA3yUSVdYN8SuAoS8Pn2etLvK5n58W4PmSQA91jse9PSXfeIu1BkIaTFaq3ZLqtIBY1sRoa5LMzxfsw6zNmP6oS7632PAgmXI+l3JvJLvk5+lPNFTQEnkuJOsECriQ59I1+ouWDWw8mRtYWliGDSy6oLRSMpmEMOdyswDOZvX576XsxU6A2mD5AZQ06Pxj5xKc8q8dphATxIw6WNQdOi5+rTmL2v1t8ciEd8ZIET0z4tzYpOiSt3RrzbT6pF5mLnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(136003)(376002)(366004)(396003)(451199015)(110136005)(2906002)(33656002)(38070700005)(53546011)(478600001)(316002)(83380400001)(7696005)(6506007)(86362001)(107886003)(55016003)(26005)(186003)(71200400001)(9686003)(52536014)(122000001)(8936002)(82960400001)(38100700002)(4744005)(41300700001)(66946007)(76116006)(66476007)(66446008)(5660300002)(64756008)(8676002)(66556008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E+TU2i054OIc8PTfNN5+STg0pl2KY4n6tU1NB9W8MjDNmNhNkkkjZ8ieMu6N?=
 =?us-ascii?Q?Tb7dnt/exxyC8zj9SDd7ZqH/HLnccb5frMv22h3ZLdj9jwX3A091Gxsk49mm?=
 =?us-ascii?Q?JMYR/OTs8A89p1Mm/fbOWAi+BbsNpzJDRTD+oFE9XxxgfjaoLgo4gvjDFIQ8?=
 =?us-ascii?Q?7LgvtmyIBuDZ+DLpzOXK2bL0UEQadnyBAOdErFYAkTWOgoW3qW2U/ejgRBhx?=
 =?us-ascii?Q?dVARzrDxujHdwrlCXSw0l0EFT15FX7oLyyZNRbdXszCs5tuBa+mMhmBcDEqZ?=
 =?us-ascii?Q?insiYZFwesmeXf85+LbI6zhSsUI1oF7ltcBctdjoEtFcKAtm6KS7JgEAWAgU?=
 =?us-ascii?Q?hgf7EcEqSnKCZnhR8BYJtEg/uWv4TYYhufNcHGniDZvSNM2/ordgV6clLZLd?=
 =?us-ascii?Q?x7AQim7z/UX5x9sVFJR7BUwqxwQrHHiMsF+To+kHlSC2YBRw10sCI8GM36Dj?=
 =?us-ascii?Q?qIY3eUpCQl4wdm8e5kcBwthGE/937njpICxHURET7tKKKS9ZhkHj7Lw/3FEY?=
 =?us-ascii?Q?6jIF7erexeDRYHxntQfAdNcM6kSjkGr879XSuRtTZryLqFPb6l7q2G7C2LmD?=
 =?us-ascii?Q?6/ZMmKSV1oho+QoB1GA+hL2qxUWGVtYdQ/1SRrrAO3pi86eAnG8zXQdAXJnA?=
 =?us-ascii?Q?/UoyaEwLoroXMZVEdCwW6JDCmzYGdGQ0IOG9NpKU43DLWk8KQFoxIPHOQ2Zk?=
 =?us-ascii?Q?jHFctnRJaoM0//MutT5GGJlZbrXZZhlQAvpyEr4ySlblUV5hkEMozWEKqkJb?=
 =?us-ascii?Q?i5OMFG6qCUHrrud0xIp2Z8/ox7RCVMc2XkTEAdkDYNs6QSgnQFF3CyUD1S3u?=
 =?us-ascii?Q?C1gpaTPIS+mxAJHYLXWMMcPphGk25Vt/iEgzUz+1fkZMVtezl7DxkNWy3Df8?=
 =?us-ascii?Q?Pmq224MApOtKWnHF56oWrOS/EQjjVIYtfrHIzDtD0h3wyhyBbvj48t8Qcp7/?=
 =?us-ascii?Q?K23vuncD+TadWI+wf3ThlNkPgXs4eQQwpSzTBZtiD1pJYAt5a5Yy8dqaQ4kg?=
 =?us-ascii?Q?k9e1rZMuRccqfqIjSCQu9IfF6wz+jPaLiFCrvhac2Hkgy3XaklX1Z4IeowLv?=
 =?us-ascii?Q?qM56sWwU+MrVHp64WLaBJ9OdSDult8QKk3sUNwj04UVHOpVaHnOa0l2Ov0kd?=
 =?us-ascii?Q?zRh7kJeYZvGzdXpmr13W6ZCdZzceMgRCnQGEAkJlMpAAPQTuNum4yjj1VzKY?=
 =?us-ascii?Q?1cFGBcOVtF0xTsH5HBMtwhmYu/pbF3sbKNsKGKI7P6adQcyteos/n/Jq3sG4?=
 =?us-ascii?Q?AUH/V7WZadUYmpziFc6Byr2g+BvOv3Te63g8RZdNvOn+keBYtDfv89hA6TMZ?=
 =?us-ascii?Q?rqlUD4L96L1RSTSx+4vhYZz4D730J0J0HpMLcAgiW+azwrZrm6IYAett/R/Q?=
 =?us-ascii?Q?5EkMb2ZksaptdgvmAPHGuEFcouMvfGew3kAj/gfneuGC7H/LNzx4zy4QZT4O?=
 =?us-ascii?Q?CoTbJOa1CeuAOgYXnomIGFF2VRogTHJ30K7ASwlk4aC51TqTlF/oyMlSjA5V?=
 =?us-ascii?Q?6UNnKFePzLuzhoRNnFBfIjp5Wp9eZs4DLrv35KBBYEP9trhuBS7IzhYmfO4v?=
 =?us-ascii?Q?fOL1iJKi6qDqioCxy5M8E3wVjeBq3DFc5CpGpkONmv9vVpmN7JhN3CLeIvtb?=
 =?us-ascii?Q?EQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38300465-ee76-4a83-cd7c-08dae2de2cfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 23:01:49.1285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z6GQrh+QiYvb9aXZqIVaU86Y7vhf+KmVArA2RKAl8jR3O9xO71fVxZQg38eE/EfloNdMbBgActBTgpx0r2UPmTtsH2/TWpHSiOYtts9QffI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7910
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671577313; x=1703113313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NLYOH8O0d3UV0qMNupS+opVzIfLYZBWwSL3HYMIYluA=;
 b=DSl9GTd1TYRHsDsjbbn1+fO5pSRF3Njsl8o4CcY1vkMgLa9NzyvjH21B
 dTAw36EVKqqJDvFKxGW/cHmg0Dh6czoWS/G2VAa1zIdQwgigdvVinDVii
 apI59ElnbY2j5VebJMLE34kPEP7vI6Yi5XY/tra75DVXDUOJkc7HR9srz
 YTRbX7yVYsQbmsk1FJ26oBWlUZv61aXV46xl7M3HAcqjMgG1Ccvc7ItEk
 KkE8qI8DurT0scwbCDEsk+RDmLn/XRv0c/4cnLY5wRBPUyzvQWkVpsjsD
 WBVDDOwpf+lL7Ww64/z7vDl6gupbnw7LNbRHdUSscEDXCbFV8TTDlvvCi
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DSl9GTd1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ixgbe: Filter out
 spurious link up indication
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
Cc: "Czapla, SebastianX" <sebastianx.czapla@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sebastian Czapla
> Sent: Monday, December 12, 2022 2:00 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Czapla, SebastianX <sebastianx.czapla@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] ixgbe: Filter out spurious link up indication
>
> Add delayed link state recheck to filter false link up indication caused by transceiver with no fiber cable attached.
>
> Signed-off-by: Sebastian Czapla <sebastianx.czapla@intel.com>
> ---
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 21 ++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
