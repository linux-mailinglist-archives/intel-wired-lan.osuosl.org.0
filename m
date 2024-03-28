Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E288FD60
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 11:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8895841549;
	Thu, 28 Mar 2024 10:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EDrfuUwESHrl; Thu, 28 Mar 2024 10:48:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90D9741529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711622896;
	bh=9cJI0dyfnixoSj47241WSoyLzLmYvnEIp8Xg2g5y5bE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2tFof5F6HtTdS2r0cbLPtjP6QMD1k8KmYwnCTd4UAB+3AYA9XAeWTwvvSRtyIQz1z
	 uGz8oCJfWqcNnmJLqzlqegy+tqXUUZDiXtErpOOGjHv83DsTINUKeno9RJpSH5O4sO
	 3sysQTRDfa4Ngy3GrCDB81MRHmp5nxHLCuvApDu8GhmEVHq3fGWIIMWFIcYQzbTH19
	 lRVg7OQf3KHnkUbujBzE7HpqBQiwRxqZN7ayL/41KaxHiRbt/iT4NDt5ZdIVqKurlA
	 TbIpJbqk/OqC1j29trpeXDSMWYNrZtaPT/n0M0DmDuV1GfZsQXCDvhkYc+Q7sWeKpJ
	 bEphdVEPQOdkg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90D9741529;
	Thu, 28 Mar 2024 10:48:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7F4F1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2BDC60D6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:48:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M7ogsBtq_k1T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 10:48:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E695260681
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E695260681
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E695260681
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:48:12 +0000 (UTC)
X-CSE-ConnectionGUID: zxuYrxJASwWUHi3r4t+Rvw==
X-CSE-MsgGUID: L6ymV+0YRJegrnv8PkmivQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17317901"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17317901"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21270053"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:48:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:48:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:48:10 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cVsOf9cY2GQow4/qDXjEBghw/QZaikZu6NVvAM9iZkx2vagTWTYNqVmCtlGdqi0ksNCHErYp9Pwmf0UmjN2kB+0WrsUCP0fu18YOO2NslksrmxDrgNvOG00qsn43G4AMZHzOr1YI1Qgs+RG7IET/QyxxkmYCl6nFF0G2SD6wj+IPFTW3y5DG9RbNM9rQpfTwM8ScbczEBp/adOlHua3258F3ukQBfBPHSvfipcdWQEhUmo8qhuzP7jrhGDm+54uuy/R6DlzHLOglFgEuMOJ3KKQl3wIySemXnAlEAPhRkS4MOTqbJFOeOl6tyYcYhWfOpk0yJZ/q9Y4/Tawzv1RNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9cJI0dyfnixoSj47241WSoyLzLmYvnEIp8Xg2g5y5bE=;
 b=QmTk0CEUJmZ15EgMPEhcKlhkG05D3a54zb1iFpTiSgDW1Uca0R08k1JcF/5Hpl0GvlFc1Z8nDSI4n0SklA7UvNjXiQSEsTHyjgRUJXJn+t8Znec06asTnmMCLTeZ15GxxlioMFljiMWwTEPMps6mVOmlfLU7IN5rlym+9ew9fypFNLcAhuwO6h2WSebUgONErAP4jQ1NsLJnH9zYdsQ438rKcfxppB48gcqFWuaXjJezzqEH26tk0jpnsYvO+sKaK5smE0M64Aqnp5aB9bMVg7Im9ajsyfwNmc6kr3MeXgU3f6k1aYmNgFwsFFotF79CNkGqaSDr/Wdgp+UOVD+00Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB6100.namprd11.prod.outlook.com (2603:10b6:208:3d4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 10:48:07 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:48:07 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v1 1/3] ice: move ice_devlink.[ch]
 to devlink folder
Thread-Index: AQHafvu36ErxApLf+EudhkeFj8IF2LFM/HAQ
Date: Thu, 28 Mar 2024 10:48:07 +0000
Message-ID: <CYYPR11MB842928915C4851F93752B4B1BD3B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
 <20240325213433.829161-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240325213433.829161-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB6100:EE_
x-ms-office365-filtering-correlation-id: 2b379cb8-dfdb-40d7-0d1e-08dc4f148d96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YJQYWt/yKPcXpqawydH77bmp00JY0SqcEg0poGDX+JktJBJ3Pnf2H6LWBDRTTXc099ouk3pgUFvVedF/4hb5iCb9v32OFhdc2ohc8fCMtdee9cwrYYJ1njiFcVxO1GySKjb+tULRcRvZu3cBuO4vTW9y4VakLRsH2ypnO1Dg2c+wUP+UL/PBPCvjU8NtQ/ZHeJQgUgF3iBpLFVgaJwV0cDHLt14Hk36RQLHaMJ2WmpaWGspfbUtw/jPJfCghM/tli9J1r7NOI6gj8lnQkSDrlfkNEA2rmQdx4/H4yPRH3mebNr7wSERRQWC7K8DSsS4Vd7AU08T4YrkXFqKwewRAuHh1cu+1JlBRMrobTPN+sIhWIfSdq0RJ+xbNi1WoP+mgtsilqvDI+/2mznqqnot2P1LDn2peJU4QMuYIi+5KuHgWUmg+gkJb6MPGPzQAD8p7F4v7E0ZYBp3MJtg/SAiJ+Wr4Qlp5612JJrn4pQYnRCq5Y7G+Yw443Ui2uaBNvvcenU9UjZsMdO5wPp2nmJM4C0LxQ1DQkkdh60ZqGUoRltxChVty9SYVZU/MwiDXcq81nhinbOh7lEqzE5MqitxFtChP/8BfUA9xcVdWXG72Yax7qd0vwd3VPp5x3Vc3sSiAlJ6JAckROU6m5VhEZ1OUvuxDbt01tLPg2j5TNgQYKjfq9VASaaOV5GX/94DEvrGFPwwifDcPmP425QW9MUT2Ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e/K5ie94ZUhJPqMXdb5u9aDYWsF6fQpzz/ytrpdru+Hui5rjOX3W6eXNrtnx?=
 =?us-ascii?Q?PVN5p3Cdts/OhzxuyCMi/AAKG+wyHYLHJPH+Lj3ZobZBF3Xc2qvikb8d+RCf?=
 =?us-ascii?Q?/0qxTR1qikWMg22nGtE4bHlQufXAk+rIl8BH66LoR76vEj7NsdY9K21RImvE?=
 =?us-ascii?Q?qbjHNs+J/X0dN87+/txkhHrmAZxaPIfLo0XFcjEMWWUK/WWnvfLF2JSuSHi7?=
 =?us-ascii?Q?f0SrCZ+/tLsn7aRtM7oOJsZQzT78TQCkmJ6Mnts3Dvqg57sSsGVcHBQPnPR3?=
 =?us-ascii?Q?xeVpieAbfDlELIj6SZFe7Y15mpOUJb3g6s+9mwaeAYm8L+Jh+1t7XKzEVVLQ?=
 =?us-ascii?Q?Lsd6siVEwwGIEACO6EzqlJ3TdH0HrDuHl+NRTOB1Onx4x4lAapSiY2jtnslT?=
 =?us-ascii?Q?i80npZQbtjRdOv1FEr2/g4h+8SgU7XNXCCHXNjnYO8XCuAkBZ2Z53q/17pVw?=
 =?us-ascii?Q?0cJsP7MFSiijf/JKDK+LOhaId1XzJ7mf4PJ/6IcyelUeRckAaqNJIdecPCxF?=
 =?us-ascii?Q?MWdAAm+xUlY2tYgypdE4sV9RjGvtg3r67GAjdMcmmfK26wb5aXGk5z0kfgI0?=
 =?us-ascii?Q?EsRlYAgSZKCTIpTT1Xgb1yQgYVVa8EmnCYOnsD1AbEFmoiAL+b5xJdint/Gi?=
 =?us-ascii?Q?4wMrWxeCjrX68lo5Bpvm3wArcwco/m1u8B8/vtbqWHDTYDtYSXPOt9kbqMEV?=
 =?us-ascii?Q?okbahij6US3cqf4ayvqXPOHWrrstyePCtWA9bZFvrQ3s0qQ2y1Pee/S4nspi?=
 =?us-ascii?Q?euWJZi87zdaA3Wpg90hOyBlkke3WDKV4PB5P+pUCjpG8ZDNBoVe+sx7RuQej?=
 =?us-ascii?Q?whkbkCb+ayN0s+hRSIFdwe1nztTK9u5Txs5LU9n9nWGVgNdPHESjngsb4KR7?=
 =?us-ascii?Q?qq8qsnJc1iVxvjJU8ttCT5z7b1rxUzXNWay4WGGS+899YAvYnIrwcltEpaAo?=
 =?us-ascii?Q?LMemfYQHeEQNeANUEXXXGUOeq/RWwtDdjDoMeNoaNTQeHB+LuJSdXFexXQnh?=
 =?us-ascii?Q?LVibMxqpwkGX1Vdx2tDiZdBCzGkfgmUOGL3ytN0/LZVi3vActkmp0GzUYfRG?=
 =?us-ascii?Q?Po/7dVy3JhC/4rfCpXUhVbl31PXceloEe34db4ODljtCZeOD5vbwLCKHBwpQ?=
 =?us-ascii?Q?b+zMrHz/EQVjVLXsoYC0tycD0AmK2FZEaH+1CpzDWgcEgOVMEMbqkLhN7xJ6?=
 =?us-ascii?Q?uhcEmN55K71gubRZdW0crM6OsWNf53iATsP0h837cw38bX5KPjtWfubVoOgO?=
 =?us-ascii?Q?b7/udAdtpfdfbDsK0hKk4wsJQ2y8YhojQPM2dH9EDR3I+qtHt3zFNsfLRBrk?=
 =?us-ascii?Q?vk5rOYo9Ybhbdr61NROMArkz7ESV0P2CI2jDeLgxsvGaDsmwJ8fX6JON6xzy?=
 =?us-ascii?Q?JH5MkGCXrIcPfi8XtHpK6l9rN93Z+94N7NoCIGh37hbOpsetC/cRfkqX5+wS?=
 =?us-ascii?Q?Ymei4wkyjnzAva3iYW7jEB6JOxICpAG36VB6frSDc340Yzg0MPz3cs0/lyCF?=
 =?us-ascii?Q?ltV1EFg7Ki6ymQyI5Bh+jz6oaBaMoDXWXrdt3Xo2DtXN4X0P5XFFtCQIM6O3?=
 =?us-ascii?Q?HEPckNvL3/nd9uhU1cHg2enDJwvz+jurzQ2LiDFzVrPjGvWs19RX+gOKD94z?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b379cb8-dfdb-40d7-0d1e-08dc4f148d96
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:48:07.2783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7J+PMk33xyY5OniXeCTdWzkjzT2bKjD6X9FYAUdSQyP1zUfa49oBHEiQVeh0f0zcQJkBk+/8PqJga7u6x+IEG+875lb/RKSIVyJqK8nLD8oDMEELj2jaAleJrmFr7X7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711622893; x=1743158893;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R/A9j/J+8JHPe3VoavT4HqM5g9DyzIZaq0KC//m5rh8=;
 b=CC5fQklXm5wuhqrF7A8SDfT+iunSCa1KqpbBXbEAIWaasNd74lOSfzHN
 PEj/eBxdWd5ex0ppI7j4dhE8hvAjZhxTY5OwrbUfD+Psb6RsndP0ZJ2+h
 gLw+JvzQrxEDN/y756MFD+QyUEMKf7er8PG3xtLByVwRP9I9AF3uQ7L40
 8ET1GrNJejY3cvU1MXgbRhEaJMKDROVvrc9C9JwqrSrIILoHxnpnR30rK
 RK3116WanVgFKx+AtJmrR5srjiSORac8hka7KgUNyRiQDy3FatsAtjd61
 76Y2B9u/Uo6vpCqJdiZWew8Yy6uIZRmLMtlX8+EDhDt5HAfypzFDCjl98
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CC5fQklX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/3] ice: move ice_devlink.[ch]
 to devlink folder
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: Tuesday, March 26, 2024 3:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; netdev@vger.ker=
nel.org; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v1 1/3] ice: move ice_devlink.[ch] t=
o devlink folder
>
> Only moving whole files, fixing Makefile and bunch of includes.
>
> Some changes to ice_devlink file was done even in representor part (Tx to=
pology), so keep it as final patch to not mess up with rebasing.
>
> After moving to devlink folder there is no need to have such long name fo=
r these files. Rename them to simple devlink.
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> drivers/net/ethernet/intel/ice/Makefile                        | 3 ++-
> .../ethernet/intel/ice/{ice_devlink.c =3D> devlink/devlink.c}    | 2 +-
>  .../ethernet/intel/ice/{ice_devlink.h =3D> devlink/devlink.h}    | 0
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_eswitch.c                   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c                       | 2 +-
>  drivers/net/ethernet/intel/ice/ice_main.c                      | 2 +-
>  drivers/net/ethernet/intel/ice/ice_repr.c                      | 2 +-
>  8 files changed, 8 insertions(+), 7 deletions(-)  rename drivers/net/eth=
ernet/intel/ice/{ice_devlink.c =3D> devlink/devlink.c} (99%)  rename driver=
s/net/ethernet/intel/ice/{ice_devlink.h =3D> devlink/devlink.h} (100%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

