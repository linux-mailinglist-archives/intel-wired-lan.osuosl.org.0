Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE66804A10
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 07:29:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47BDB6100E;
	Tue,  5 Dec 2023 06:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47BDB6100E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701757790;
	bh=ahfNjrjlyIMeO6Ao10oTwMeNcTDjAY3rhnAWMv8E9x0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qExkPgiocJ5oPdoTnMnBlQbjWsIZdXc6Tmi6piQw4QOv1AYjvVGXbxR2C4/cNHSt3
	 ds0JSCmaNW19Fw7AcwMHGTn4hY4n4BfPkj2f8O3l17zt3VQcGQcp2DwvsTn4fcgisk
	 L13AvDLHH7Z7bbWrhyOoz87grxS+bbbra6boabnd8c4TyGLaOQB7ihycP9hJf5jPUQ
	 u/vBF8hJYdvnSVJmPIKtfVP45gnnB8Wg3VizJMgZQp8tIe5ReKxHAf3U06T8NVEzpZ
	 B1HD3cG3resFHn6tdRkNNaqvjk32dRTKFd4B3TDLi2WcUindD+pGiw5G7Al/pCYPpB
	 xNhdcaWCVL8Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZi4M0rCXBbQ; Tue,  5 Dec 2023 06:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA7986073F;
	Tue,  5 Dec 2023 06:29:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA7986073F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D6261BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F3A681E92
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:29:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F3A681E92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IvT4H94p9TY7 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 06:29:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75DBC81E86
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75DBC81E86
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="458170195"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="458170195"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 22:29:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="747111937"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="747111937"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 22:29:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:29:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 22:29:40 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 22:29:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SGIReuQKhJA53gEgPWtQt76sgz81aW89PCpDKJwz4/aUr2cV6QsKwmYVQgMCIuJHfzz6Hai3ehXxTre5gdVSrv38osGZwoTQL2JEWTxyEETBibN423Ok/aKuF33WMmM9bjTLN45Qk7SZtYeA9HNh6N3kBmQaHzHGvupMMaRu4vFkjWgN2FCiDs2KS6Svng4GlTnBw8wgnp+MVSdQ4HdwKnSbufT7mUiUQrsFFeXLIuyvpD1rOHZcwGmYqaopp+tZ2WC09Pannas9X2bPq59DM+yrByJ3TRkogOoi2EcM3HzIfFIcT9IC/AASJsMynTPEtj7XjKtmMZj0Cp9RTTYYzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=On+h/eF1Mn4jqTi2fQKxWSM8QarVD9poLBdUX2cGo10=;
 b=aUpKSqO4dtKbQHky32rbbmnJCFP3XZLDZxvPsZhbTUr1IwF/4jUKVp9fAqpVS2OGGNUeq3jQ0tAzSeN1u/YDtEhmmTvVJP5Txtxo959Gd2WnFia8cdtr31l3To1fFGOYzPQwlLU9zwvMyfek/141J8bqug1auSpIQcLTsa8SUerX+XiOIl8xKu1+h9epmHus88LYZkHLOqZdg2r5WY5Vw9qIrFQdPvf7OQru7cVq2d6MGowzGN5eqVL8DdFZ1TpEWSwaMuMjAkWrLkBgLS3EkqZAhx2j2mCM0QhmgDU8EDHlQhq+lSTgsGOuDZUDZ8QlC3qHpsiSMv63xK8bIvP2jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DM4PR11MB6286.namprd11.prod.outlook.com (2603:10b6:8:a7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.33; Tue, 5 Dec 2023 06:29:38 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 06:29:38 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 06/13] ice: field prep
 conversion
Thread-Index: AQHaHMCvZFUyUTzLYk6XIjsX2lx9nbCaS9sQ
Date: Tue, 5 Dec 2023 06:29:38 +0000
Message-ID: <BL0PR11MB312287FBF863E337E6A40F31BD85A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-7-jesse.brandeburg@intel.com>
In-Reply-To: <20231121211921.19834-7-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DM4PR11MB6286:EE_
x-ms-office365-filtering-correlation-id: 6a34513a-eac6-436a-3c8e-08dbf55b8e87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DKbKRAj5McqKhrjSDJD7MMSAZfywT55kyn8X4UrDO1v281/chyjQ0j/b1rn55i0TKEFSqzJ0/9CjqwgWqPhGavoEB7cU95HgHfWY4d3kfLOxH3E5OUa9PyhUCwTfUnXPZWa/pCZVtV466EACmWTfxw4GK0yeoBcIsGzKpgWo+owDtngGsOIrLtRYDFlVWDEQX9BFq/0qwZLLn4kOpTrp2MD//iztyRCpnSmLNwJNC6+Vn8giur+ETEdS33OhDlBEHJ5p4HDIiZ37Vr8jrO6/C//y7hcBku9V2q6K2eDjKiGgS/daTm6Enke18lqlVqRBdfBUQIe4K6M4AJYnPwm58OzOSG+IB0Mr8tbyP2WqGR0j3PYHoLhaGPxo4B/r0CjOTOWhbT2ShlvcbFpRx+IwQ5tP0qrw+71yNIYowSDZqMB1lmkw57n8+nuwv0dUlQdKx+wkEFzvHADnUhHOVe8LvI/aAlfjcnpLry3VVFBMPm0sO1jYjoAO/rg9ltIOKyDceyDwROjvz3qO+VIdZOARhUWCRC9u/Zl/TQ/VthNkb++JzsDnAONvvUTzF7gn90SnPdFdZ0VngfLjeZrmAemOJZlStMyiqZHVRYHsZssD8O5CrkTLNrIti1s8zBTv/U5v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(136003)(39860400002)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(38100700002)(55016003)(26005)(8676002)(83380400001)(82960400001)(86362001)(53546011)(9686003)(7696005)(6506007)(41300700001)(8936002)(122000001)(71200400001)(478600001)(66946007)(110136005)(64756008)(76116006)(66446008)(66556008)(66476007)(316002)(54906003)(33656002)(2906002)(52536014)(4326008)(5660300002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gZzqweZuptJyjGX3sqrsz0gv9Pw7nYRX4RwLnm/VvQTgD6dQmfce7nVRc7jA?=
 =?us-ascii?Q?Yo+cDYdC71uJmZWhlIgu8cDKfprWmVSsC6xQSBOKFZSlpoM3E8kJxbkbZGWS?=
 =?us-ascii?Q?ZbJXflEg6ph7LcFPX0ukDFT4Qjg3LbH6XPBh1OScUwunNB6st87WmvfIXhgx?=
 =?us-ascii?Q?tq0vgdJwiLMr83pjikuteL3A9K/Lf1hbPi+HhOXaA3wMQ2oLqmlNj7CIIYcx?=
 =?us-ascii?Q?6ehZOcJDX6KcnT7NxlRnW5qqmPQ083/2EDejJ58mrT5bRFV9esGUSKPbAW1Q?=
 =?us-ascii?Q?8ikg/OAQa9oGHMTvtVThLhWIo8HqjWBU9Ah4AgQpoe2Ji8BCpChYuL2ZHhZN?=
 =?us-ascii?Q?jDHCmLw0ctJPxECWGCCLlh2mBCpGB0fnD/FTsShxC0rekeP9Bw9tSIO3vxqW?=
 =?us-ascii?Q?qRu/6YAx6qAJAsGfvi97cDLERp6+/0wWzAAzp5ZBpxPdOyrjDeo4UuAUhLYM?=
 =?us-ascii?Q?nplp9tjsjkrCj/wQ7JW4VCls3j20ADs/9jYBic/diu9d5Z9vmABgoa6V2y7m?=
 =?us-ascii?Q?FIm8P8w/Ev0i4Zh1xhzYviZo/6LaYHy9/IPJoyaXNxFC0ZYFeS99V21Zr/ru?=
 =?us-ascii?Q?YFLYPDqpXpRZ4XdYc/72Z7TRoFvwV44bVI9l1dFG+fK/1GOeGzJcp2GCMjcD?=
 =?us-ascii?Q?ssJRMmE5NCBNVfKTVPdA/4fPAhsVeYuHMbpqns3/iIyTpX0KypCSEq0L0RwT?=
 =?us-ascii?Q?3y3nS8l/bNFfGEfW1SElXWdDSbqLjndNfwai0Sde2Eg3Sxw2hpm57RDxnZ1b?=
 =?us-ascii?Q?UplMleIImH98jkSBhxOzReVt3605E8EuNxqCTexqpBemijcjuFjTPc0GyaIM?=
 =?us-ascii?Q?1AwUFWwu+WKAUPGtpOdsZDpM3d93JDtpty4ZaM4ywHJjq3aYur6KtkF6F2Jq?=
 =?us-ascii?Q?QldylAZjnC30ocrxJyLBnkpucT8XUAM5POSinpp72XpTECxebhXtIUqzlgO7?=
 =?us-ascii?Q?moijYMzqMGgONBRWyEbk1W5jnIRjUP2i4DtYODu+FW76fuVGO5JGHXoeEpm/?=
 =?us-ascii?Q?mt+Xjc0RYWhyVjuRrQNs8tUTZ3taZ1CFhiqD/P1SIhyVUKVLttPuiMA8aQCe?=
 =?us-ascii?Q?7hnv5Ytb3fZXaVlpZLI452zDF2XJV/+renMOUFq+VRvas+uAO+2eWwhYdk0i?=
 =?us-ascii?Q?smLgwo2hbnI16lEHZPN7CYxEEhV1kyKN5G/6qEdBT5txQzLCkIz8oGR7IZoh?=
 =?us-ascii?Q?etyDHQ0gIhHfwyrK4Qrx+TWreTNwCbncLa2Bp7A8CscdPuhiHOk1P8T6KJAP?=
 =?us-ascii?Q?3XaaAF+wJkWyf9hlbNbmdPzLM0wdd8ToEdh44ZpB/yB+2baDnzTiAZjMQKDj?=
 =?us-ascii?Q?5zPkcnrlMpjRyQJgvtaYK/ILbDmP5LmAGbrVJTD/WktLGHkn9zAcaDHv3bcH?=
 =?us-ascii?Q?Ql05mHNymMwq/fkPzpZWmlLL6FapXNxFE7DFnSnVmWXtTM76pL+0Qa8gEEhW?=
 =?us-ascii?Q?+VGtjb+mqL/ZXEdxe7XDyZtDQMNK7G2i6lvEs3OkTq2jKPBiX8rYMS88vA/1?=
 =?us-ascii?Q?IFLvbVWNMG86U0Z1oqdmpDglJC7RlYAZL7N6WAiulr2SUULBpA3TcjO/w2BA?=
 =?us-ascii?Q?7eB7CA7MGKX75BOMLYXczIyWJSmL9zmpws/jZfgZTmGedWMjG4nsPzxvpnNB?=
 =?us-ascii?Q?VQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a34513a-eac6-436a-3c8e-08dbf55b8e87
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 06:29:38.5029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sRnyN4U7ERiXivDcjtCr7BOtvW7pxHySpj0uYrEdfMV8sRckTvwVp9OK5GD3qUxLO9PXad9DfT1t/81GrZAZrMzRkg9cAkvbx6H7IQhJAHes1v5ip1yj/8uEgXIMXEUn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6286
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701757783; x=1733293783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N8qlEh8XLlxdsFzjo3B8/rT+uocF3hlwkQMp2jt9USY=;
 b=hy11hQybqoZ+qA1rG+3MP+RZvednzNw++4ZRJd/IMbk4v3pdPNBoeKtX
 Cuz1NFGYFf4fPgDJ2G3X/nboq8+UXMFjAiuLk6piBAis4I4l+ogij+TIa
 IwzOVsvnbwvWDLK27i1cTB/RVlRIjwW3VVFP4cM4gZJY9l/2ZtpY2h1Zx
 mZ5ZohiMRYl/4L5fqd1f6fbwgo3apg9T6d46gsz9B+ntYnimkF5YfZeRf
 f+OzFtIoX/oFROf1WLQ92g9sVakY3BrtmtEvdMZZg/5dmSYeERhcDap9u
 VN8xO+rXHEENJcuv0byRTPz8W7X+d19mNK16GC1/kVxUMrh0tZiJVFKoJ
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hy11hQyb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 06/13] ice: field prep
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
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, November 22, 2023 2:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Julia Lawall <Julia.Lawall@inria.fr>; netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/13] ice: field prep conversion
>
> Refactor ice driver to use FIELD_PREP(), which reduces lines of code
> and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> Several places I changed to OR into a single variable with |= instead of
> using a multi-line statement with trailing OR operators, as it
> (subjectively) makes the code clearer.
>
> A local variable vmvf_and_timeout was created and used to avoid multiple
> logical ORs being __le16 converted, which shortened some lines and makes
> the code cleaner.
>
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c     | 20 +++---
>  drivers/net/ethernet/intel/ice/ice_common.c   | 23 +++----
>  drivers/net/ethernet/intel/ice/ice_dcb.c      |  3 +-
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  2 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |  4 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.c     | 69 +++++++------------
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |  8 +--
>  drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 52 +++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp.c      |  9 ++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 38 ++++------
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 61 ++++++++--------
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |  6 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +--
>  .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  2 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 19 ++---
>  16 files changed, 130 insertions(+), 196 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
