Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0539F83FD5C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jan 2024 06:04:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89B3160BA8;
	Mon, 29 Jan 2024 05:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B3160BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706504656;
	bh=s/dWu96Qvp5UMVWncFn4IrPKEKmDkIEyli5JJKIWUwM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XhFXgGRIzVh27eiDcsy67ODph+OT2WHflxnSilIRTVWiglpz2ycGOQvkfvhOe+C0B
	 weMds3mFzD2eVpaGS4D9w0GhEkdNYNsBCw3sybWSEWKMS8Qg9fBDufY3I7xMXgacOx
	 Dc9GiUCB3AKKMWLsl3YhXl99MK6JX8E9/BKhHseL3F+2xQGLCtvD6WBJCg9HTiOuUk
	 /uBWJeLc8pbiht8xUW9wIXeOEQ3U07yQQATQhD9T79rEtWFOzgtocf0UyCMxWHpJE/
	 k4KObvx1I1WApC2yl13xoVCMUTN84q3+OQDxNdVzNMctgwqCvdL0SZ36cix8DsiwTR
	 L1ed64DHOB7+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxrFiXpqWm23; Mon, 29 Jan 2024 05:04:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98D0660B2E;
	Mon, 29 Jan 2024 05:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98D0660B2E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BBCB71BF34A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96402409E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96402409E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5XO8LXp0FM-T for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jan 2024 05:04:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B548409C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jan 2024 05:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B548409C2
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="2740762"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; 
   d="scan'208";a="2740762"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2024 21:04:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="906966856"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="906966856"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2024 21:04:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 21:04:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 28 Jan 2024 21:04:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 28 Jan 2024 21:04:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 28 Jan 2024 21:04:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T6y27ZOEyuz4XofYE5+3KGlwO1JOsJtgqKOvlmV1JMEqq8XD6tSDFc6j24JnGj4MTvFrds0SoV9F0YojFS//2W9ANWX0OWTDmR6/rYxIgvuMOXq+RqDRWsMIYvjyQXLR+o6edPhwyXXboI2VmKUn8dxOYCk6sXa3/KF1e1jIP7lJXfvwVr4LtCj/P8MOz9eN2mPL9iZOeitdmot/qcc4Sq2NSwVchtVjFz6vbBaw+uc2gnuA2HHKS9lalnEPL2FdBjR48j2yuMxqmSe6i6xrIAJL3zdR5ug/m4lBntSon+qlKD2D1Y3b1mbKDlFnrnQ0M3Tnb2Xu2YlvUsnOKbQgeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s/dWu96Qvp5UMVWncFn4IrPKEKmDkIEyli5JJKIWUwM=;
 b=Fp9vsgqe+IqJXwtM/IN3KXryBCpmT3cKToBTqmoopQ3vb9PN0AST/TvkWztz4lQoNlWVDVolo+locEIzJCVErorpMMItnDP7EZd63N62FE112e3UVqznGjC0NnBwmjuRnozaBtsSBtDgwgL85nMF9K8DPr9atnniv1zq451OubTiKj26pmdYRFnA4TVsWhVHjcLRygrZPgb89EqlDpdKx10kLUvlzwosPYc85WnymlBBa6cuUbVtBC9jHlp52SjqLGclr8cdYZGD/2BHKHP0OhJTHF/WjWJRYLJzy+1++i7LRzccxx+stQWT9Oxt7JY8+XtGHR9noGKrQJVpDwAdZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by SJ2PR11MB8371.namprd11.prod.outlook.com (2603:10b6:a03:543::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 05:03:59 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7228.027; Mon, 29 Jan 2024
 05:03:58 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove and readd
 netdev during devlink reload
Thread-Index: AQHaT2yJerHIvFJi0Eenh+0wQSKpR7DwQb6w
Date: Mon, 29 Jan 2024 05:03:58 +0000
Message-ID: <CYYPR11MB8429AED3A405D3B4298D3F15BD7E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240125085459.13096-1-wojciech.drewek@intel.com>
In-Reply-To: <20240125085459.13096-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|SJ2PR11MB8371:EE_
x-ms-office365-filtering-correlation-id: 1ed774ea-c32c-45cd-b4b1-08dc2087b38f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 46bS8mcxgQU3ccvigXnFhitYhQBZyBo/evp/aYPXSxOPrtrPHC2zcVnDfUMbRK3+UeVXffjhjLv2hVw2e28f5QIlvQFOvgHSrq2rXMDsJNMokBZ+H7NgZr8q8wpkwIQpn8QceDNp9ER2sQ48BTcNoIywOQDk6HuD1LihFykFK8L2oDLEyIV7SaAqU/moutlClPygzVFGxu9Oyd0BLiPBdJ2WPZj5ShTsPTp8fQjNd0cbVobuIeLRhUIGAqiQeUtiXiZEpNW9A1+1STe7YRrdc+MGXcMnzUZNIvQyot/8vrxIDdepk2TXi8w8mAkzgYOezirU0sxc7X8wd9l9dqZYU0kbsDuTixIOL688VW13naKGF+8Os+akpRcdSAoCpiGUfcwYP47/JubF+QKIoAhNzsVFh6PiWc9wXgzgVJzJrhqzOvtzfd9vi7bgc9nyiLpy4I5oH3T8c+FJ3mLoXu0A8gC9FIZVjaNAi26LZRYkX1cv1WEuoE1dyuzRxcq+LD1Pw+OQigp+Gv3OhSs4h7kQIy06xJeD0qLIScbgAeKNlM3sH3/fZFY9JM9ycub+JJpJaJJsf/neL0Jowfm9ZzlUUBxoXYtx70XpvXuVt7ET2CFMfh7OTr6FUN/L2+dvu0/i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(66446008)(52536014)(8936002)(8676002)(4326008)(33656002)(2906002)(5660300002)(86362001)(110136005)(66556008)(76116006)(66946007)(66476007)(316002)(54906003)(38070700009)(64756008)(38100700002)(122000001)(82960400001)(53546011)(7696005)(6506007)(9686003)(478600001)(83380400001)(71200400001)(26005)(107886003)(41300700001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6vz4IYrDOxKV5fUN6QcCAEGrHcNj7YGA4jeoiwn7MsOSStfJt/Z5XmSwSSd/?=
 =?us-ascii?Q?0daRFAOSubITUip5fEWgACK1lNiJIqP4d8sVyYhCPXnIxi21MUu3SBffpQZH?=
 =?us-ascii?Q?OAPIeDHoG4ERx55XH+ayD7sQ+Vyl0rDu10m0DWqyWfZPSujt0AQX48xh/HxK?=
 =?us-ascii?Q?VQQE08ic9TLQ1um9GBPZ5Sv7wqQH4qKA0UwImVeO/g5Jk2j97Iy+35jxTJVL?=
 =?us-ascii?Q?XotljlClnbNiNh4G9vSdn9XqCON6yko1v3KbRiwr1Y+GcZ7PQ23Xg8F1+eoa?=
 =?us-ascii?Q?jrKVwShgl+0cij+jrpaEl8vGhjadKUFaGyLIn5B8gDld/7zYt4IWDtu5449s?=
 =?us-ascii?Q?WeoRddUJUiCQU/riRcEqK/6kiQNwQmhaO8gkf4ehXBV/hdnDjkqGDV+BRjyg?=
 =?us-ascii?Q?QXm+9712nELm23LVr7DHnDvsQScEYgaTymWNgvxnBjSIL3nJxoTIgkIqpdLP?=
 =?us-ascii?Q?71nG4g1PVGp2XIaB7TARdmHix3j1QizLWReLACmcJugS53Y7xCsxb41ucr8J?=
 =?us-ascii?Q?T0/TQXgyIF5yj8v3qtDDG0UJpZ4UE8ZkWRDVl9C1NAKm6oqZFI9Hw0l7YDIq?=
 =?us-ascii?Q?4jqGbGMGwyqEIjjeJaBoETfLyL9eovKN4xqtcfywtydOyFH+P4YP3QRNXXk4?=
 =?us-ascii?Q?kwkTeFNW/5sIZvhoJ9OKzu4IUl/mo48jNcHR4A0PKrvFN4SItwwcvUvI/kDb?=
 =?us-ascii?Q?ASMKYpxUxrn7X8SkulOwm/THMYCDrCgcxJ51r1WaKeo7Gh9zJ6Y21vyflpqm?=
 =?us-ascii?Q?7ZXd/UCa2r+Kb5VeKBeeKrSUr8knH7usaT2HxhIHCA5NjA5Y3dbvyn74KF0X?=
 =?us-ascii?Q?W0g+cxeOz7AxoKV0w7XTXhpDcARMqKDaPIWYm69VjcKC5Hnl8+w+W1ENR/vr?=
 =?us-ascii?Q?hJGncSUhDv8omn9lCkS69apR26mv0G04CMuvQQfKdiQjcRLhCOOfqJj7cnRH?=
 =?us-ascii?Q?TAh7ljgmbdNEo+plE0blopNuXcmTN9Z/Jrc3zZkalujUPuTLg7bZDpsvieVn?=
 =?us-ascii?Q?AZy6RTHDhgXuPj5G9H9TBw0gevgfXwmmqWUibqMOADKXS1WMBmtpo8Am1/x/?=
 =?us-ascii?Q?Zgv3q2YvFUBf+rgEwD0MtyI7ECb0irXgxmL8IF1EgegQyFQMEVt9Yo30fJfz?=
 =?us-ascii?Q?NYPUAGShRuXIw1GGEuDcNzt8454Ve+s1E27/X+/hsBkd3gHDVHgbxmcwnUsL?=
 =?us-ascii?Q?mYZ6dMJJAOmoyzC0ffn8QoHxk3zakZPP4RCDWu6nPHcL7J5fyCESBjA1gLh7?=
 =?us-ascii?Q?ip4om0SnJ8TfvefgTSg5P+daTdtpCRkq/eZyzPtzStKc6G4iTyrQRdpCqUm0?=
 =?us-ascii?Q?g5OPog8gTB+UmDxKvkTVK+J5oCKC0645dlulQOvDCDB7vRMHPfEso5zmIqY2?=
 =?us-ascii?Q?5/RRyZld24ZLH8wQY8qJRc30sCh/7q3Gw2kxJGmeB+sQ8M58wVQ7C+5J5HM/?=
 =?us-ascii?Q?xJFcPnYWx831ezskpYWRefQ4rx0Nrrj4rdmzw0Z+Numkqm8fKMjFmjtMHePi?=
 =?us-ascii?Q?VFrTPv6mxmzrEwZuRbJVLLldsLQft7ChKJj0o5v4+FsRpmhgv4D7P7S4elX7?=
 =?us-ascii?Q?fFWoFaW5avP0F4jTyZeeasVqwDMIjlV+QEVErSHah7gtDtiKR7X6iKUQcG/E?=
 =?us-ascii?Q?7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ed774ea-c32c-45cd-b4b1-08dc2087b38f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2024 05:03:58.4571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vnbbuNNglmiZpR7jMmoK4xA+MvfO1nQj//dX9iXFviweeJfGo6EikcZImXeZmmPdHqTKzr+2JyaDAeB3u7YWLLPqF/xhSeHMj76GxAqJinV5AiIX4J2kPTxE+aMqKIkt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8371
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706504650; x=1738040650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C+MHseRmHFk5fKeSdy0+fuW6tNmixbgoMMUYU4aLfpw=;
 b=QXqyIGDuHOod9UYkE+MZh5Mzdt5P6HgfV1LrUnqyeetot6t2whtTgLcR
 8yYZz1TY1cpm8zmF5KI6UQ6CjcUL5k+TtaJ8k41Daqbm/Yg38Isoa7c06
 G3B6WEh+g1vAlbi122K6oGYhZtd+ch1QKs6uJC36Nu82SoeUyxn4V1JOM
 hO7tm4Ie2mbCfnHUXVREfWQ4RQSboWaTY986Bygrt4TC+idhw0a4XkYnb
 UL2BOx1LPjwf7wQh47oucEsLvCSalkXPYSoIr3NKow3MNssiN8kQHEPEK
 cmsxc9SSErToCam37zDjSC9/9kgdBOmZmGAwx2Kt7IbB1CLbl7qJDpnRY
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QXqyIGDu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove and readd
 netdev during devlink reload
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
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>, "Stillwell Jr,
 Paul M" <paul.m.stillwell.jr@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Thursday, January 25, 2024 2:25 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; jiri@resnulli.us; vadim.fedorenko@linux.dev; =
Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove and readd netd=
ev during devlink reload
>
> Recent changes to the devlink reload (commit 9b2348e2d6c9
> ("devlink: warn about existing entities during reload-reinit"))
> force the drivers to destroy devlink ports during reinit.
> Adjust ice driver to this requirement, unregister netdvice, destroy
> devlink port. ice_init_eth() was removed and all the common code
> between probe and reload was moved to ice_load().
>
> During devlink reload we can't take devl_lock (it's already taken)
> and in ice_probe() we have to lock it. Use devl_* variant of the API
> which does not acquire and release devl_lock. Guard ice_load()
> with devl_lock only in case of probe.
>
> Introduce ice_debugfs_fwlog_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
>
> Suggested-by: Jiri Pirko <jiri@nvidia.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: empty init removed in ice_devlink_reinit_up
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   3 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
>  5 files changed, 139 insertions(+), 133 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

