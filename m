Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 766CF57DFD8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 12:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D747610E9;
	Fri, 22 Jul 2022 10:28:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D747610E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658485690;
	bh=gI6R2Vktga+iXUcZVuJiZiXnwceC8DIyOgh7tUrnWP4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5ALPDJXQq2gIdoawjGXcI+juM8oNzGUJ5+5Wyzh+PFWBd5skBOkWKM9l3vwuLd5Ib
	 jrjn4nwc/XofaybCU+vQC9wCR92UwQYCmBWrMAGrGRRXJlrdB/UnG+j+/3qE4N1vpt
	 0fl3tiI6MSfzBjZFwZTbBKVEAi3iCzpyqhNWkRkL+YaPwnFoqezVWvDLvNtlNNo7/s
	 gvvJvfPk0tHMZm9KZlsl+AkKibzgH0twh53YuiBJaGnj0uImXoXm5lKFGHSRA5Dox9
	 ZrtYIXt4Gq0vugtSxxZZjj9cpn0HIE6bA4c+3aDw0Yju+BluUZqtZHYsQcLNsdfDuD
	 EO6KcAscGaELA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzJdc1hVjELz; Fri, 22 Jul 2022 10:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E511E60BB5;
	Fri, 22 Jul 2022 10:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E511E60BB5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B0951BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:28:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D758C84123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D758C84123
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h-0b_Gpg2kk7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 10:28:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E7A8840FE
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7E7A8840FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 10:28:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="274140572"
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="274140572"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2022 03:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,185,1654585200"; d="scan'208";a="626516027"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 22 Jul 2022 03:28:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 22 Jul 2022 03:27:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 22 Jul 2022 03:27:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Jul 2022 03:27:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFeoVz0U1Fm4xQ16VFYhB9Qb4gx5ufOjr/YChKNAtKWQK5IK6ZqbKOPkduDD5Ic3AcCtdjXH1YDmxo4UxmguwZRzSjU+PPV/4WoLTrS+1AFfnfDnbbLU9EKw5o1NLo7zhohI/ANGr9FYr1+RC4pvp45zXQhdQCQNGbXtLM1K+8KpqVN2m+m3OAleQ+PQfhEOlRbH/APq4B0LoA8lEb1PYVsV5nICqSl+35KNgn/f9KlbUGBhjSvQe17tBX3mQCFPQeHGL8dCtxjB+J11o+518J/AQCs0YWkdFzizDSDnAc/a4P/4kiesMhQHjEz24rBXL9BbWjMmxg5/9UUAi3f4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kPPSpJqKQk1I3XHRsXUf6GNRt1sE3UlznjrZqWN3+A0=;
 b=ZOh3KyOIbfI3OpZS7g9V5110+EeHmuHVHokPTl7hi/aKgW5fch9jLW9+hLWWBu8dfHG9EzbVEDEclfs3Y3OnGMcNqbfxKz+bjV6VvPEUQccpZCuWuPo009gMjbTj3PiGqtVNmTP65CgFyHZ8V/Cc2LtYik/mABSY+oifZNVDwph5Etw49yMUt+C6zYlk8lkPJkPRUVDRL+XmIDPS4S9PtLqdulCBxOlZd7K3NYxT9SJFpq+whoA5NXRnU70Kcfg5uE0O66Nm8AdbgQApd5odZ6XiRk4Kd6AGK4wh9KagE2MSJFuytPLV65C/RAhh2YSD//UCYx2wTL9uvBsv8QfV8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by MN2PR11MB4336.namprd11.prod.outlook.com (2603:10b6:208:18c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Fri, 22 Jul
 2022 10:27:58 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5438.023; Fri, 22 Jul
 2022 10:27:57 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3 1/2] ice: Introduce enabling
 promiscuous mode on multiple VF's
Thread-Index: AQHYj6fVSo1xJNGFK0yVjclK/anqha2KS0Xg
Date: Fri, 22 Jul 2022 10:27:56 +0000
Message-ID: <CY4PR11MB162405ABC9BEC5454D266A41E6909@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220704131227.2966160-1-michal.wilczynski@intel.com>
 <20220704131227.2966160-2-michal.wilczynski@intel.com>
In-Reply-To: <20220704131227.2966160-2-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73ab4c5d-00ac-423b-96e5-08da6bccd822
x-ms-traffictypediagnostic: MN2PR11MB4336:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K/KKmwnlRO0N85VL+LuNwvUP6eV9CcZARMOOIP4zMp3SrqW6mNtcg6wlEi1HwRChhzlr68OxSVahEubM6PVFjABAMmg050BFH7sb8x5e8PL5z8jz5otqbWjhgWTvtls9ZBxl7UpZDAiy6yzgLCOsh4zuYMQLL5K/bVxTgVSAp224jVFnFTdHiH/GdWy6b54YPplOxZdvGEHMHNJmRoipitmjez70n7WfBwx5tPlyFcG5wUk0q8xQ2VHOLLV1R+01qoMbv0EnY9jpbRq10VA4Z7fqQy/5cQpoZ3tg0R3r7rS+q+/Qd/0sBHSftXK7INDWPsxr6GDyvVZa03KAiQpTzv4AhyM1kmcMT7uGLA1TmZXN8JqhcVKR/8HujQ0ciBVpHH43pKZ+VV53mIWzUz/jikHrRqgMkHFKmdLDPA2aXx0PqW1srwiT0JuBtawqX9Ye1DBHuzW/8Jk4VezQOuWnMflcw8hJehnpghbJDw76JZxpiILNiExzE1XjPVOvtM9bsGO0uJaSfslEyehW5yx3+dWfR92+g4NKyQnEXGUOhX4/JeNK7eGeFhqbJnUlYEd0ixK6Jro5zhgBYspzWRPW8Oi1Xja36W7V4v10GdS/QLuAHSnZmzOra7X++79he5rPTf54dQfwqbdgxjHQES4/KaHgd+hLRTRJdWHqSZznhOlPzCJofYJUgMFnq/YLEZM15tYKYDgKwNf8LMgkp5bBF8v/0VQgEEg03SODVHJPKOEdMF+UexTHrZCgFWhKxkToyhEIJSpN0dhktRBCcYWQMcdADzFvGiHw/8IMkwN9mobisz17HQIOUjpGpVUwLrGl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(366004)(39860400002)(396003)(66556008)(66476007)(66446008)(64756008)(83380400001)(186003)(76116006)(8676002)(4326008)(6506007)(66946007)(86362001)(478600001)(2906002)(33656002)(55016003)(122000001)(82960400001)(52536014)(8936002)(38070700005)(5660300002)(316002)(26005)(53546011)(41300700001)(107886003)(71200400001)(110136005)(9686003)(7696005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?e5FVv/y65mxmq42Udwvw9rbX/RilOWJ4UwrXPawsIe87MqbzfP2cyy43yH?=
 =?iso-8859-2?Q?OM8Sw26mPvB3C+4dtrMqwpKoi73u/TIbxobQtoCgUGtIrfdXPiP3+XVrvy?=
 =?iso-8859-2?Q?FCp7PLBVR8z7xM7aTsJLFwW/ae1/MUd3tlYwl3HavpEkQEf3waX4XunOhQ?=
 =?iso-8859-2?Q?7C9z1rzxhGqS/4Zi+O8+FO9s1ES0jssL1Naw/dZAOy4tb9IIS1Xy/+vFz8?=
 =?iso-8859-2?Q?PEV9RPalzAJIIL9ofi9EJwZjv6v5Rf/HpY71YBDiZtQU5J5r7sirW0vKDt?=
 =?iso-8859-2?Q?Wei7wBNwbUIKX2e6iUK1Jpg2HKfpir5y2RTDwdYDjGesOb337eVNVukBCT?=
 =?iso-8859-2?Q?46eWE1a+M8HrvHOAno4b5Bb4KiIAMixeMDQwqg8BUNu5T6GFM8+iU4iKTP?=
 =?iso-8859-2?Q?qoQ8EhETE3bF35Wsvsu48Arcr4o/vyWDWgP5fauAV6u5geYGn9h3qHI+vM?=
 =?iso-8859-2?Q?et2eMz7T54s+zhf12SObqrsSb/pvyN0Ue6zxcFfY//jh4WOTgNVZwZUZpf?=
 =?iso-8859-2?Q?gZlUIScKnapsBL1Vamay0YLI1SHirAuWv4XxjrDHHYdtgemvszUAXcGXRa?=
 =?iso-8859-2?Q?Fr0JDa2DE7DtH+r5H4OilKtS/Dh7vy7MJw/muPEcZUbFEZUoPBw9xLFgLk?=
 =?iso-8859-2?Q?cNWyPQ1zcN+hA1l9J5TUiTeExd6Hon78Tp8ld0e3FaOCaUiSO4pyKzFZcy?=
 =?iso-8859-2?Q?3z/dtgUPIYoH0J7FUPXyH4bnaVymmBcK8PYDOeq5GV185pjj5YWGUErJgv?=
 =?iso-8859-2?Q?sYlax97ohrNaEEgR4/lJkdLntDT2/4oPT4sBsV02lqDwpSx9DhYi5rxlNM?=
 =?iso-8859-2?Q?iv9lYBuPYcAuxRxhPl+6e9LXYHn4i2Q6opHq5fouLcg3BNnO4lcFYaFVB2?=
 =?iso-8859-2?Q?+x7vBzctBLtnC5AlHi/CwgDONrkIR+PIDtpUjWGCyES8XDFpDigrG7R4A3?=
 =?iso-8859-2?Q?2MoEQJN/hY8VUkl85GX6B9Qf/32k0tSxlK4Qx+JYkEDz2D6F5ML7v4TlnB?=
 =?iso-8859-2?Q?fYs5f3+Zs6SPnCFQ0QVwxxQExwP/YtZCs9ieFdh2Rk6NeT5Cc7yaazon7V?=
 =?iso-8859-2?Q?DbD5lUXGfuWIe1WbvOIzPsRuBHajiFpig31bAIHZkKLsRCT5CTurz2An5Y?=
 =?iso-8859-2?Q?IXib9/jPUUUZikW8EkN1ZVylXtnl1pxFjwpxKMH1q5FmU8VpPpJJxtWsqS?=
 =?iso-8859-2?Q?v3zJq7ZSHcFiWgt8t+V9u9Wgu25PZCllHpXBZhh5CdNmTedWJGY3CvOc8k?=
 =?iso-8859-2?Q?kYOStW1F2kVb7rDKpI4SnwpqQokmPB6druOFQTupmboYcPZgAWxi8Asx8O?=
 =?iso-8859-2?Q?ZjWNCg0EAH46t7Kq1udKP2MR+sT6GnhyT9ks5VRtATXsH65ChwM1u9ROi7?=
 =?iso-8859-2?Q?upuPL+7yO1bmkagjwcgCuh4i0A1Lh6GXV83CwxdMmJKn14/pvu40O9jt5g?=
 =?iso-8859-2?Q?z4XrjOf77kZYPl/sqU+DrSlNvhsW5Fqie0ZQDFIcxT53nb/ZU++sbaytXM?=
 =?iso-8859-2?Q?MWBRKT5ehCAHbC3t2L+rz+SHxhjKiC52nnPDgGZ66lPSYPNLyQ3Blp/igz?=
 =?iso-8859-2?Q?nKnZrVuGcD9+VrrdZLpYeaU4pNaKe04fV88n7D0TFrT/CC5t46MbTHVz9h?=
 =?iso-8859-2?Q?WlHH0RQOk3QmkuYzxeCI9WgXS+BHMPREzu?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73ab4c5d-00ac-423b-96e5-08da6bccd822
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2022 10:27:56.9679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JaP7C9sw4yWAdqts/F881J8iwGEdM0DQA9JOwdHh+rGUNH2DiCa0l+ne1sfZ1URmEqk9XhxUxFKP5pqtFMzRSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4336
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658485682; x=1690021682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gk4Zo1cNOHCNgNlSP4H6ccWmR6KtaEo9aLneGgLDOxA=;
 b=M/X+DPFK/IrONiSo0xGRJTB6sD1X99HG+TetNAFNyd2EJpCqq5fl9NE0
 YRX7hZwoHyk/xJvZbmGmj9tIL18FgAs0PF0c2t008SKPJ1aSDiixy9YXF
 chKLNnb54HhQXMmzxbgs0cnz3k3GVm6CENlFcUf1EtdFFzwff0CLOaRm5
 3P8EcxOlO3///OLbpooz1vBwtCFiA3Ucb2NwYGkl+Jzjp2DVBvrd0UeZU
 aWFPMV29zd5IRn6PqeS3XqxIquZwWFHpZCLcK5G3uWr7qONZfHBvUcaRO
 oBPmgpzJDAmaVdxt+cHWKEwJHdm7EmmSf5Sj/33ehoYFoH61cpmryT1UB
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M/X+DPFK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 1/2] ice: Introduce enabling
 promiscuous mode on multiple VF's
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: poniedzia=B3ek, 4 lipca 2022 15:12
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v3 1/2] ice: Introduce enabling
> promiscuous mode on multiple VF's
> =

> In current implementation default VSI switch filter is only able to forwa=
rd
> traffic to a single VSI. This limits promiscuous mode with private flag '=
vf-true-
> promisc-support' to a single VF. Enabling it on the second VF won't work.=
 Also
> allmulticast support doesn't seem to be properly implemented when vf-true-
> promisc-support is true.
> =

> Use standard ice_add_rule_internal() function that already implements
> forwarding to multiple VSI's instead of constructing AQ call manually.
> =

> Add switch filter for allmulticast mode when vf-true-promisc-support is
> enabled. The same filter is added regardless of the flag - it doesn't mat=
ter for
> this case.
> =

> Remove unnecessary fields in switch structure. From now on book keeping
> will be done by ice_add_rule_internal().
> =

> Refactor unnecessarily passed function arguments.
> =

> To test:
> 1) Create 2 VM's, and two VF's. Attach VF's to VM's.
> 2) Enable promiscuous mode on both of them and check if
>    traffic is seen on both of them.
> =

> Fixes: 01b5e89aab49 ("ice: Add VF promiscuous support")
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   2 -
>  drivers/net/ethernet/intel/ice/ice_eswitch.c  |   8 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  67 ++++-----
>  drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 134 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 -
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  10 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   4 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c |  58 ++++----
>  12 files changed, 151 insertions(+), 167 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice.h
> b/drivers/net/ethernet/intel/ice/ice.h
> index 60453b3b8d23..d8d64914e413 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
