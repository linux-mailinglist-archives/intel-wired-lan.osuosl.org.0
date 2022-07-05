Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F115B566730
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 12:00:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23B3F6002E;
	Tue,  5 Jul 2022 09:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23B3F6002E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657015199;
	bh=gIYXCDOeiba8arwDGwOHyWIMskiuB9HZOuO7GE0XcrI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JPQWlXvVW5cY+0YaPJQd9BIM8Cnf2CtvV7eHR8yB+UG7abEz1d4ebT6ie7THMPolb
	 7+9Xj4piVR+abxc55646PhZuIhEoSnSJ6lrs0UX8XaqcBpyShhz+0ITb9vfK2vBZbh
	 g50+KNDiBwtRY2ET8tg+2RzveM1mFBQo7Owmbrm2VuP+eYuU6vlsEjoCEfatcSUkHa
	 EhBGGiR6dOunzU2fc1eio/3ZXVYyqul6GTENgZAKmnG8a5racqoSb2ZeVku+PnuyLm
	 8N2fAV9RkehUvENN40+rglS0h237Dpu8wtSAEuB+alC0CRTBe2VgvXtwx4pAZ0rdmd
	 kO7m3b05EY/vQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ZIslmhaPh6X; Tue,  5 Jul 2022 09:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EB5B60AE9;
	Tue,  5 Jul 2022 09:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EB5B60AE9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D1B01BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82CB160AE9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 82CB160AE9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCTZPkHrqF0T for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 09:59:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEF46002E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ADEF46002E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:59:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308850995"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308850995"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:59:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="695602739"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jul 2022 02:59:47 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:59:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 02:59:47 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 02:59:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCDPBD5bS30cIL762jT5G1aOn1hvcpaU0Eq4JUmrLuOl3yRhihukRdUJ0jiDkL07y5B2S7v1/wIhq5KcKXloS5FGSTZO2P6AXp/UcLkakN+X9eClk7kn0RRuS1JUiMKEExKseyZ2f/eutY3gJrWm4AG6vYXZd95c77E2TLeexnGW0+nNaAR9rDrffDRzVqONw9gXqVdQUdUqKRJvYvYXTW+aKbKnElG7J1J/pFyat5t6gs8zgaEhqTbnntgoHW3+xl8Q/9TpxSKkKfw4IbKxLiWjI+rX7NJHFCJiqhBv67ftWeHMMbNlyNcHdVO2ztOdpV9x/ZML1NJ8+8NKzPTFNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vD9MIfyu5hlDyTCW3tA/7cBTL7wAAZoVwLOWL6hsOV4=;
 b=mH0AQypeHKU62BTWJ4+fiZXSYlnOBRcbFeUna+Ka7DtUVfNORwcoECMvOmIpzkJ2+tjgotk1GmnSvKRpgwMnY+8Bk8/fdnKTfGcqYMoZ0kGuDScR+/Ir8QWlJsazsHvXwCVksI7ALOSJZqcOmZUayQahvx6nAkjzxhrOt7py9duJtCZaYbp4Pomhyqv5WXNt14aw6Ixe+0RQxsAD1+I8vnjtgcdiZ/ChLGXKpGFo2dkbjuWwvT2SVG21n0DJWwgUJU2fDWj0iBTNE7zd+7iG6Gt2qT7flbNA+uhB6ufwYJCIJskbC2EzkFGLN2Db10wYC9aYIGvv172Rann/WfrGBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Tue, 5 Jul
 2022 09:59:45 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 09:59:45 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix erroneous adapter
 reinitialization during recovery process
Thread-Index: AQHYhhy+rEciYsz37k2wnDCY2PpxX61vn5dw
Date: Tue, 5 Jul 2022 09:59:45 +0000
Message-ID: <DM8PR11MB562160AF89BF8AA0931C3BDEAB819@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220622094654.1379722-1-jan.sokolowski@intel.com>
In-Reply-To: <20220622094654.1379722-1-jan.sokolowski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aeca94eb-fe04-4d50-7509-08da5e6d16ef
x-ms-traffictypediagnostic: SJ0PR11MB5088:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0j3tNonJneixDcJ9qIr8WN5Mj0GUrox/dscak1L+UpxdEBwfr5sa5P69vPi8iLKT8fQVq19VTfksue3ScZeXULHPpHITmALIkEvT2TLA6oaYVAwInR9Q8nRnhj5xKTOYONxukUKBmZk/16azi8QUPwU2wtJA0RIwq0IuKximN12pCzGoPVumLgn186ozRpqoI37gMcL+ebf97gScmxUAz3R2+UEXwOa2YIO2aJs7K1Hl3YgBTKszkgKnZrSjrdxItotLB3pl+AKMnaMgxQMvYpKJFhSJPCxdVdxLH74MFXNX1oJwcrgK0/ArMQb/bXwzPlXKUvnqv28g2g6P6C+muQW5zeD9eCe+lgj6ZFdi4X3LLOsoliJXdlDnX4XUa+9WVIySz513ea7Hg16IgYwWl/jefp2tze5nux7MCrY8p7rQ03aJj7EO9htPjnwrfxVLLdlONMBkuCcnDPXTq1nrOIB/8GW0xSYJRrdUZZlHXyMjTu8zuaFYh4hnnI/xyRPJo0aycw7vwRNzYSPqdN1YC26cu3D+q4d5i2j4Fz5+BmFiMO/Il8Vi3RSRCMepn0OjLAwQQmVMyUTVtsNMSsvlVm41qRkTw3X3H1Itek/QzpYYJclA0XflpW5VNnIk4fXDDP8jxrVBCkIEjXWwtMYCSUFm1rMYnED7AjCVybaEVd90uMNnmxZnqKYwHRbZiKoYn2ECyi4LYUAl/OUnUJLYl8TFqJ9DJ8BRhyJbcas7B1M+K85kkWY4Uud2qAKjPGeULJ3nTeyoEGnd79EhkeQArH8Ah0W4IdQ3RhC57VhbfSczFK8qBYqJdx8DnOqIWb7q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(396003)(366004)(136003)(376002)(83380400001)(52536014)(478600001)(33656002)(110136005)(107886003)(122000001)(8936002)(86362001)(186003)(53546011)(7696005)(6506007)(9686003)(66446008)(76116006)(66946007)(38070700005)(66556008)(8676002)(41300700001)(71200400001)(316002)(5660300002)(55016003)(26005)(82960400001)(4326008)(38100700002)(2906002)(66476007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ctJqEPvh/9hdQ59B8p+KjxIpPaWfqD/e/KjA/0zPY1en3GHxrE0/FsiRbj9C?=
 =?us-ascii?Q?Zz9nrFHwcHomMybAmGYjtH0MQPHK1jCbWUPEQngXfL3pQkUlyMLQpOlynDMb?=
 =?us-ascii?Q?ItscbPa28gbm35mRSPCEUuHK8igoqU91g8gXDDwCtWWRdHUzRNu+Gp2vy0d3?=
 =?us-ascii?Q?+dKz51iljENQm0g3dGjhCZjfuQ5NgYWKuGhDCsXb3xqZUzGUWWZ2z1pFOc3j?=
 =?us-ascii?Q?dPUyy4xyZSwYzIHJel+SWsx5rjm2YcNju4PIaRSfnlckr5VXAtGVWzyHthL1?=
 =?us-ascii?Q?AQdgZ2ZwpWQCcJllyorZNgXHYfSnyiTomNVUG1leHapC2k8iEs03n/j9pm8h?=
 =?us-ascii?Q?WmVm7qmJ6vSQKLWZYJR26rWJJnpvarGo27zsad1XKCGNShC/sN7M3/ytKMec?=
 =?us-ascii?Q?J+QHIkA5BlDqi2KrEL1oteuQjUN/HTqDoyKnULHlzwwAvuP17Y0tK9KCorZM?=
 =?us-ascii?Q?Iz7lgQaNzGQ92S7zU4EF03AuyNwo/qTKsoMiwIxcE+W8GDChBReyrXYjhgDH?=
 =?us-ascii?Q?JIJkyBPzo02m7YoNCaIFT2PPu/rwnqCiO/FB2ymHx0/RORgAaygcN4JbwAje?=
 =?us-ascii?Q?4r85X4XWg6IrfHvPqzSekK4SpOX1N68f+N8Me+FoUDK1h/NOO/szZQAYHASs?=
 =?us-ascii?Q?PEqufTB+ivNUvKEIE6aAJfNa4Wp4zZZtf4JHR4gn5gK7jIRVzndh6G91x8mn?=
 =?us-ascii?Q?TCT12nXPmIv130O8lV6jaKSuUXsjamLxb0dSJYo5YWRMZ3A0DbRRXWcQ09JH?=
 =?us-ascii?Q?IUTDqbCtNyJt89kc7xbothibbqSbm8fLdSvc8T26+JIKXu3P4HUnAhVdZoaL?=
 =?us-ascii?Q?vM1SaJ4DQ9Sg3/DG978yyJhbyRoSY94J4EF09r0qNRPrDnx4njl8R8CdyLi8?=
 =?us-ascii?Q?5uRB/FfrOrEdLJ77sjdN4+d++nrYZVskYKIAraYbwdzArU9I9TT+OAkHR05r?=
 =?us-ascii?Q?5AuRAhzMxrPZsXPKld5aA52PKR74p9AB+S538wq1rBx5W0RPpIfLCYBO3mWt?=
 =?us-ascii?Q?A2vBEKsUZK2e2lKBEA0/xs2tv5uYgAkIzzfW62Q6ZiYIU17sahECzbMKrLwH?=
 =?us-ascii?Q?/NbSDRKFz+A2T3O9Uz3SbTQw0n9BTSBtgDrotwKKlDv1pxxh3zXaNk/NSyks?=
 =?us-ascii?Q?861R/VU4vUE5A2d4E8mVv5u1Qz4a/8KgAlDqDPfJwTQEqNUo4NUjr+Ox/7tU?=
 =?us-ascii?Q?vmp1hNUK2Ro0TysWIAsAvBL3W71YJy3e3ywEtUHib+IrtWwkYiBV/F40BceY?=
 =?us-ascii?Q?seqfV7/27oWr+XWmrwRRmbrnmaRkCDmonB0EN/jg+VCuq2s+XWeBKV66a6/+?=
 =?us-ascii?Q?+XWMRN3M3Y3M0xmY1MESm2Iav5IUUQ7YJK2w5TTz38uHJIWIGX9gi6ZYDSpM?=
 =?us-ascii?Q?lTcCyxv4lghSVaKu0/aPi2cV41n5h6eHf1E2oXQoPualNDP2cTr5HB7GR9ex?=
 =?us-ascii?Q?Bp1GmDo7dwOlmOZ4OMv67zzFyp8GYqBJeW1KUreZuq+M9AoZ14BTad3lX9RY?=
 =?us-ascii?Q?ffwA6tmqhtfTaDwtYMuWp/ABgFG+aSCziBnoxGbqmGSgPQGLLoPyVum5VzuG?=
 =?us-ascii?Q?NpxyHey7iB6MyPkIfgcSFYoUvM64bOa1Ug3VVdevYmub+IAsPVDD+JhQql5e?=
 =?us-ascii?Q?kQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeca94eb-fe04-4d50-7509-08da5e6d16ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 09:59:45.5427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nunyYYHwDbFqI35pmfXdxYNsqixUKEyO8p3/iZen/leLebReXudocTXaqkemFkQqqTKnM8So1xTnWPTZFTXf0WwuHBt7ykxDIFx7zfz9O/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657015191; x=1688551191;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r3oZZEeYhYG8JwC3l4l5ZoqQnUCLF8Ywe7jWgGP6ac8=;
 b=aB+/on+EhQp5mdLmoEVA2Kgw9IlzpnNE862UyQ6SBQ+Ue8wDydNlxT57
 C6mFRKh40J9hjVXSiFYco8Nw1kDeqTbByKn6BRc5iRUcqtKI62kVqEve4
 4Wr2/pynLkqgBqFlwTdTaylT1bg8bFe1DX8bIEQlH3C2//WdHzlUgvqB7
 BpxdbIUS6hlJcfiab7nMfsTwAXtyMs743pdrd9CJ3fMrKzApLpQHbKzt+
 XvqYXRQ5pEVbeAj0ln1Q+bY+IJuW7WfP+2eTy507CxawBdL7WgD3iVFnd
 WPZQfz9knlC3FK1XwUU3MOUHWADPb8trFIIaPoH+RNP7nMq7hIG17AQuz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aB+/on+E
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix erroneous adapter
 reinitialization during recovery process
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
Cc: "Lukwinski, Dawid" <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jan Sokolowski
> Sent: Wednesday, June 22, 2022 11:47 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lukwinski, Dawid <dawid.lukwinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix erroneous adapter
> reinitialization during recovery process
> 
> From: Dawid Lukwinski <dawid.lukwinski@intel.com>
> 
> Fix an issue, when driver incorrectly detects state of recovery process and
> erroneously reinitializes interrupts, which results in a kernel error and call
> trace message.
> 
> The issue was caused by a combination of two factors:
> 1. Assuming the EMP reset issued after completing firmware recovery means
> the whole recovery process is complete.
> 2. Erroneous reinitialization of interrupt vector after detecting the
> abovementioned EMP reset.
> 
> Fixes (1) by changing how recovery state change is detected and (2) by
> adjusting the conditional expression to ensure using proper interrupt
> reinitialization method, depending on the situation.
> 
> Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
> Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
> v2: Change author to Dawid, and remove signed-off-by from Alice
> ---
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index d59b9a08f5b3..685556e968f2 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10654,7 +10654,7 @@ static int i40e_reset(struct i40e_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
