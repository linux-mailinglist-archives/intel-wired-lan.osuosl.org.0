Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C6C58CC2D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Aug 2022 18:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BC4C760DED;
	Mon,  8 Aug 2022 16:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC4C760DED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659976483;
	bh=q/mfaFevs25GlXsi15ZTDdXFcDNXSKXLMMdaNkMLaPA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=irNkbE+7rVV3Yc5d0PpwAN3n13VG1bGpVR3AGU7k1fBj2a4N15y/4xCgNwvXR0PXV
	 ZxqMxSELwKpkoYDptgGrjXI+qbxE7JU/wCd9xUuN2Q3vgwTS/ffL/rQ1hgEmpCWJ+F
	 R1ZAcmSChgwAmnYNaH9NH01kwyFR2gnvLYbz8H3TqwttHVAndRr8NZwIu9ZNUim5+m
	 cornPLIJFckp/NeAViLcIU+0Qb/enIDeQ002S++w8IcxlP7qCJs+S+nZ5Z9Kv3+nke
	 INzmO1U4qfroaVqAEzaTQWT8/Z4FfHPjr8XqJ1Onljsn4Fl1VaHDswgWFf2H8nSM59
	 WunABdtf1D1Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3T4-2TrRrf3S; Mon,  8 Aug 2022 16:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1C4060D96;
	Mon,  8 Aug 2022 16:34:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1C4060D96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 143821BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 16:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF5AE40A71
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 16:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF5AE40A71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y9viNSaYZh0a for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 16:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 339CA40154
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 339CA40154
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 16:34:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="289395048"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="289395048"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 09:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="664028729"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 08 Aug 2022 09:34:32 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 09:34:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 09:34:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 8 Aug 2022 09:34:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 8 Aug 2022 09:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pr18xzaTl1Sl+bDjIdkDcuKrtalow2rPO5CCB1lnCrCR6bE2pUll5Kgu5Gz0f3+HvsfyopWeAD/PeD2u6tHXuu4E3Lsk6uvAlLQ60UeQnNvKKAZDP2zQfWsKqCNDW/Ges1S8eGdwzXL0JABm2ytGVmLq9vbt4nzExw2ZgKXWklszNfX90t+w2gan37gOUkIWFv0L8TC+BmcS2t/aWZI218W6h5m+eohpdla2hO4jC33j6h+USEf21tUAcLwCSZQEhoh4LMf7DMiVdwxRniQsOct5LoU75n1RpnshvG2WkyNjI0QqGSTVp3UWk9/6UT3PpnqMk0V7iV4uJ4iqtnO8gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6R1FjqCejgWCLx54TXI3FjXZa0sqbejBcIM+5FtFKKc=;
 b=I6q4fk6W6dEm56OXPIm+8lIF5EzFgh6PGx6YujULj4I0cHH9/aEfhg6khfgn7TVvUXXKIzwJWwiPW/lxhhBnlczoQxFB2swQpYqo7qCj6Ka3V8bM6gG9+DYL0smy6BzhPJshqptBCSB5bUq7ciSSqvi7/enMxCU9+JHm1uQup9sGWm9plU6KNNS+GmhU+WKx5atdRitaKTzXx+RLezZdRhk0auC4hormV1vcT3tKzpnRPhCK1KNMeIhV0x4Fx24yb0wsA5abKnykilGAX7cY31yaHY2fEGx+hDoOz3PHD1Tub4Lj9VhzgzhiIQ1sDXUsYfsABrQrNgJi9V60f6JBgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL0PR11MB3297.namprd11.prod.outlook.com (2603:10b6:208:69::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Mon, 8 Aug
 2022 16:34:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 16:34:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] ice: Remove ucast_shared
Thread-Index: AQHYobXO2+8rX4DldkqfmA9nOYdPpa2lRdyg
Date: Mon, 8 Aug 2022 16:34:28 +0000
Message-ID: <BYAPR11MB3367C29042B9B4B8AEADE635FC639@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727123549.1146738-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220727123549.1146738-1-jedrzej.jagielski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43cbc5ba-70fc-4fd6-a50a-08da795bdd56
x-ms-traffictypediagnostic: BL0PR11MB3297:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: joSIscpytEie3blFd2lbfe09Pkqe84/2ZfynLVB1mXwo3dKkfT+lTL2GbZTsPWoS9LNQZEAONQqqq5K+o0i0jjkII6TuooeOfl9yc2U/Q2Yiyh6E0x+8NRmuG+4BY6d9CynJjLkAZsN/7xTmruM8osKCWU0XUr2VHhX6ocSMJbU8FdAN2vwfJJ1ENesH8BbjBMlDt0AyrWHs8weopqp/vDnZ5+W/6tcOINnKLRefn5mRyIfA2vli6ns0yxt0i6ttLGR/8pvg1ECLUCK28bZ1DwsWRX54tzVzvynr5IV2BDrqtrQObXbUo5OrLAZ3OwLnItXkg6zfST6w6oOGkMVy/kvRA0gLyLt4FqlFAGe2FGIQDyba3xKldQDyV1HrYkWxv8YoaGpND2y3WES+9CVyI+xADCEdoN7khCZ+KdrGbuMXoBKmTbQJszuF2xTFyCKZ93IET/nfS5O2UFGcQaz2DquV26UQ3j7ENMs5v7fzafV4Cve6YWhHlBVFD7NyQQHO7jLVytFPVSLl1yN1U39tlpJXv2OOBW0I9UNo9qR3s3avkFmSrpVPSbBTPS72CK1+4oU8ylW9Xlu8XwiTxd8WNE6CHWT21kwR39ndAxaugOKYKoPMHYiSUnwHkFFZro/mVKP87K4eWM8yr88ebYzgOWgeQ2/bb/r3MqXwFPHRLsu1Vudd2teevsK1FSf4vylMt8Ug6Rf4QlFRMexD7ybrYbr32w6xjnT6ZMAXwUoOz4sX1snuG966O/A49jlsSSHq1cqy+Z6TtdWAWytBuzPp5EInzwFBfZzqzrxQw+REPYrsH+qtlgxNArZPmryXMafA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(346002)(376002)(366004)(82960400001)(33656002)(41300700001)(26005)(9686003)(6506007)(53546011)(38070700005)(7696005)(55016003)(38100700002)(122000001)(186003)(107886003)(86362001)(83380400001)(8676002)(64756008)(66446008)(71200400001)(4744005)(66946007)(66556008)(4326008)(66476007)(5660300002)(76116006)(52536014)(8936002)(54906003)(2906002)(478600001)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q5OQcBcwZKUGC/TUpq7gQuwrA1yMXvOu6rmnhbVuCDn8Zm4l5mpJA+nmYGaY?=
 =?us-ascii?Q?dRVQZcniL9KUOdv0m2d4VghywhAGhcSPjueFHxhQRLIltIE0foUDF3IBwnk5?=
 =?us-ascii?Q?uZyClr8cUm8lIpVT6IURB2qx7DhKZNfe7+iA1bud9Ei6KNkAOnaSjpJ1xyfQ?=
 =?us-ascii?Q?hpQ5czPOQ+FfFt0BNr3XAvqODVM0yiYwyYavC0UCcWHcPeXxEd03kMZUDpmS?=
 =?us-ascii?Q?eTOrktlTNemTPv53gXm/OuBeGrf/3mInEGOKT8xzsDbMhpuH5BhzONdFE0+T?=
 =?us-ascii?Q?3RYTDyrfQO5GcE/sLNJ4R/bJyKPcBlPe1ToD/TYFBmeOuU9uhLMazWw6yt3G?=
 =?us-ascii?Q?jQbe/+GtTJzTPxbixQBWNNUKFinl1MP8//DfxEPSExv5DOVDvCRPt8qcANcn?=
 =?us-ascii?Q?J49XUSKeOMfvJFn24Giw0sKW6fTCSCQJe4MV7egk2IOWD37cmFg0SCj5Muqs?=
 =?us-ascii?Q?s41z5R6abv5dsZaxC+bZ8bIQ2WI4xmTqT/mZzoQZXdSEfKkZ51CDyDcgFDKV?=
 =?us-ascii?Q?O+8e5AX+kXqxzgqkungebfzy2L9IVP1MVJttiBNp4c2BLZ8iupJMvBdS8EsQ?=
 =?us-ascii?Q?mrRsziZ+0O6MHOi0S39TK/qfFtbQcEB6/dC1yEYmHd9Ip9gJDsm1xCdNxXPd?=
 =?us-ascii?Q?ZgMkR8GDK9L58oC1qSGZX/WVJ1jB+f+VL50FZ3tXQsuVni2faFtcWRFSB+iO?=
 =?us-ascii?Q?k3/MYVTOqDVAGVN00c6shI2IHmBvfFbFQqvf+m1gwnNBuGNlQ1QGBEDxkEC4?=
 =?us-ascii?Q?dfakxzU4rydb+bqDtp+kBHuK4hZl6T5Q7eaZMMkBEnOzh3BGuxa6khJZ+EsW?=
 =?us-ascii?Q?9in+OoVm534XzbbGukWbKX19+bXUXT/5HD2YBtALubo4FbgaHWtbJAETJ8k1?=
 =?us-ascii?Q?BgHsFjLj5ZhiS+0B+F9Ms7onlmgD8R4gOMaBzR+rQO71ICFci5ErM4WVVIOc?=
 =?us-ascii?Q?RbCOB9a02SExEqCDNisB8tG2dYIT2XxXYwmXz4XqZBV73Mw6AJzrdzo3Yq1s?=
 =?us-ascii?Q?mPwozxOek6sM4KUBTvAmDxc8vSBNzNu8R9qwHr72NR+wHtpjt5XoT2SUOmNS?=
 =?us-ascii?Q?X3kkGOL899GrJhobMRBbQgLhwmcbchzf1VC9l8yMY27yhVaWTXdCk9Zat/2A?=
 =?us-ascii?Q?2yUf4TGaNVuNNhapKdGC2DDvjCG+YdMfug/6ehh1pj6APVftrDLLvXdUAbFO?=
 =?us-ascii?Q?pi0dQQvwdJiUT032vVLIUi0bHKCFZMchs2R5gl0YcfMWUfOAaIc4bWLdahrA?=
 =?us-ascii?Q?forJcSA/uIgaWA7b7od7w5iPPfRoipT20UGLh3YREdDgZUvPkhBdV+vPngVt?=
 =?us-ascii?Q?fPAA0GP4EVEcg9pCaNJszBVahdaRAE9cC9UJ/3j8qyn0Qru0moOy4+3tAXal?=
 =?us-ascii?Q?YFoITRHfrwkQPlkNEtPoBcpFWxqbPc12b+0QSPA6Y3qrjcFbi7jGjA+gKhxf?=
 =?us-ascii?Q?Saw2zAaoGRzlKXei5Zo0+e6Y8oLrSZIiW6y0FZSYnbkxS4hsKeIkTGISXhry?=
 =?us-ascii?Q?YN2o7Rd1RvLEDmZYWGcgIWGf5Zd32aHJUowSZHFdTUg9QD9IqqBH23htItdr?=
 =?us-ascii?Q?O2jT6R0Bike+HPceRE3bPpEAfKhFn8xqJW4uRl7j?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43cbc5ba-70fc-4fd6-a50a-08da795bdd56
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2022 16:34:28.8618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c2dWvCJuRRaJxtldREpyl2N6gjyOI1ESc7KsOK/6Mm56YOiqFW64OUKG26ROPtIoRtcfZ8mxyxcW8Yir47wTMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3297
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659976474; x=1691512474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zofzyy95rL9zH36IQJb8FovWqm6prrmgY+DCS54jmn0=;
 b=Mr8mfmU3rJaeLIGNM/nQ7Tl0KlO0UCw93ou/FS/e/29s8APewyt6qhNc
 yCpK0p+LBjjfOrLepzuLL6kpsxdxFXBkG6kBZiETLq76HVJffozbON+KL
 mrt61/7PkxpGdJkuxlsXNij54cSK1ZGMMSsI38a5bcFyK+aYjbxNCrReI
 5JfveZwrVwkP12O9hyJ7uZ+wxHRVoIXC/21GzQxZTupEzfBHdEYN/ehFH
 T5BVfCeyOOzilX+RQGttOTE0XVE462WX8Z95GIHYlu6GoH0NYMKDCH10C
 1z4xqa0dyiMn0tiEY7XYU7qJsIxrJBGXUCPXShN3Dlcv4u7WKZA1e6mN0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mr8mfmU3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Remove ucast_shared
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Wednesday, July 27, 2022 6:06 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Jagielski,
> Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v2] ice: Remove ucast_shared
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Remove ucast_shared as it was always true. Remove the code depending on
> ucast_shared from ice_add_mac and ice_remove_mac.
> Remove ice_find_ucast_rule_entry function as it was only used when
> ucast_shared was set to false.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: remove struct ice_switch_info *sw, which is set but unused
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c   |   2 -
>  drivers/net/ethernet/intel/ice/ice_switch.c | 166 +-------------------
>  drivers/net/ethernet/intel/ice/ice_type.h   |   2 -
>  3 files changed, 5 insertions(+), 165 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
