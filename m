Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D829622814
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 11:09:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB72D40B30;
	Wed,  9 Nov 2022 10:09:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB72D40B30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667988584;
	bh=+3f5FKr43lhkOPYaA20A99jwIzfe+nIYnJx37f6cAtA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0po9MQ7qMnj9HEeExG5Y00W9Ck7pR0/eiWPOWyFnis3oWG8Lj/N3VpCCrObE/G6ok
	 xXzoW0d8uK7N0aavFekZOPznUta2oucg5x65pRPzXReQwhyP+wf5mIVZCdJvDKBQx9
	 MhZdNhhItVEs7iDxUoaGpHSFqL0v9fhxjqxB0yL1rPqv0+bK3Ge6GYIzK1JU5CAUyU
	 lugBOdLoI1+Nq8grH2fvYZzp/uYuANd1Pap4a6KO7jhZYCEAvRGGJYRhhL7IRmW3uc
	 E/iQGssTJkZh235LFBgQ2uzwQvDcfal/RghW74OgyifU/LMvVLGzG8hcLNRYCPVO5P
	 sTkiWopPQyVgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nt7AD_Qt-Pi2; Wed,  9 Nov 2022 10:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD0AC40B15;
	Wed,  9 Nov 2022 10:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD0AC40B15
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2610E1BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3673605E3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F3673605E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFeqQqWvhPlP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 10:09:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19450605AB
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19450605AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 10:09:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310937069"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="310937069"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:09:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="587715165"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="587715165"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 09 Nov 2022 02:09:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 02:09:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 02:09:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 02:09:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 02:09:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=To1cJOdH1Gkg9Z6vOWRNDsdAV+zrIJI/1raMrDbrsyJlfOJ/yRvt2W3NtvnuJ4/JYyx0G+7xHZXIsjfkX5XkM7oJGhq/RbDbmRnxWy3w5MUY+2F/ISrhKC095OU0N/0AyqntOAsqJIurq6L3RqHzAccwQwJuNcsuLPw9tS3FzMWxg9w6wHse3pwdFa2E8suQ9zlBxZ4EgYpKKnjeKGWnFkKe5z4p8iE08YBWaKQUPsNcPmxvEHVgfTRZ1Zg4qda0GbpIoHY3mvBTYaUFqrMNEO3vZOedYMF67TYFOKMqBUTXVMctwHFWl9KdDlYRWRacIT6II2ITQnGjfJ9mwMh+iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tv1YKoJjzjlgJL+cTT0E9AckLZBbuMwXrcZXFq5oK1A=;
 b=USwLltJuA+v4Wg1IHZoYkT2xPaDIynr9qu8k597o6ZiUjQWXlkOFAowgxuAZUHeq6ugtD3IgyZR/klGNO2nq0WkfegM6TlV1QhfoWtQFFLDG+E8HM3s6bJeaVZ6Cps5O8VfEK1J5P8IKa81Ik8difRwZLOO24NzDB6bHtc2Va41mAflejyL2kwPOKyJJrU9/3/rdMquU/pOJb50TEdWRcQe4611DJqk/SQIMKtN12q4z1xtMaDOT7AU4FnhFywTd5EOpSksB+gRBa5jNp4kI5j97Ic2+UWlkJLo51T3vYeYZGrOBJJfeYGFuyPbmiALF3JW/Am/zLu/keMT/GCxCMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 10:09:31 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::bcaa:eb96:cfb2:be72%7]) with mapi id 15.20.5813.012; Wed, 9 Nov 2022
 10:09:31 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
 instead of TTY
Thread-Index: AQHY46FR1+2ZK3UBB0y65W9vI09g+K4kFVsAgBJp4yA=
Date: Wed, 9 Nov 2022 10:09:31 +0000
Message-ID: <DM6PR11MB4657E728B79F9315057C01419B3E9@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20221019095603.44825-1-arkadiusz.kubalewski@intel.com>
 <20221028165706.96849-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221028165706.96849-1-alexandr.lobakin@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SJ0PR11MB5039:EE_
x-ms-office365-filtering-correlation-id: ef4aa994-63d2-4265-2391-08dac23a7ecd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 24rhSvB7biL6njClCv5nTqHaA84SjuYo5lhUMZzqLNBfn3HRmFX/4PfI3JvdkurAcRRVFVfiaxKT239JIFSo6d/AN8pgbXQUS7y6gwBfLJruyn3QOlCobSsPEETUOGHUvoz3wqHDEzsXYxnFTYMD+T5tSc4m3jdbW5BkW3L9VMJ0bJvkfi6WhgMTfhtVNOmAYzyF6zX25BwTN+OCBU0+ON2ttx8onmAjdmAuUA3O9oNss43odKAi4pVUIDLEFNTNeXztcpnsZZlNxOfn8O+Vx3tvBzdMBnNg7hunhTf5nl5+3PzTYiTGoREMnDYdN+StysRTgblYIfboQ6SlW7Rlv6nXKezWKO32bFNOs+XeYSdSChQ9ICC4kFS1S263CxgTwRk09aZRGWlUli3ZYhU4Sgan+b+fFlJClwjuC6jNyGCt7Kl05aDRC8vTb5MdUCcKMfBQJs1FqpkcAZyUzHi5D1KW1qRvAZRtC+NbhlYhsDdUsPQ3THlqo/JtuzxYHSGYyBjs2rYiKoYbtiYueYkoEW3JjTGz/muw8EdjlSSMXqpGhXEIzQ2NmrIAvBiiWjko+Is6FCuYZR7xS3eCDmkQcmH0QWwVqfiOmgneZ3OSayGKWaEONSpeABIkDfVaZN+p0ziXPM2N2YncyF3T6beNI/Y9bDNU+iKB+LnKop5dVf9HQ/QPMQ4Jkpv4iROzryjukIiyubD+b2G/gbsYR7vKKRjdbxyWTcSmY3a7a8w7SWUpOeLw6CiKly4KsZYlXa91majxe9223gIv6fXS34XTjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(376002)(136003)(396003)(451199015)(186003)(82960400001)(33656002)(6506007)(4326008)(38070700005)(122000001)(38100700002)(2906002)(76116006)(86362001)(5660300002)(83380400001)(316002)(52536014)(54906003)(41300700001)(6636002)(66556008)(66946007)(8676002)(66476007)(9686003)(26005)(7696005)(6862004)(8936002)(71200400001)(55016003)(478600001)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h3NWk3p+ueqkpDaiLD+twZ6ix8kdLPJ3I/l3wXBaMOg1anc9XapcBngJyiy8?=
 =?us-ascii?Q?t+aRpxpQgC0ME0VSWcVIEbABX2SS4HrivxdiR2GTH6IsgMxm8v0GPjoQkeq5?=
 =?us-ascii?Q?xf9EBr/4eKEpLTzOU5vYDTsHw6sHac9FX/WobTcV7w3O2aB5vWYPSXJfO3Zn?=
 =?us-ascii?Q?+x2MQ+vz19/F2kM2GcnpnYr+Cxf+SM6n6s5xKbmYyxp6VaCC9DGVD8cKanna?=
 =?us-ascii?Q?tefvUzyicis3lCWXzLRbLeKSbJ3aAHKeMheC75YaAnDH+kKqWZtJaHo/Gm6X?=
 =?us-ascii?Q?5zC+WrVMJpVbPpRYMSKEVj7eGAm/g6fJ3kgp/6IuruOsn4WG5nEeQrS/QIag?=
 =?us-ascii?Q?Rv4Gk8l5IT5bidLdiZ/ME1o/aIat0URhPIb7eK7m3BiXOeItlQYmteDu41KC?=
 =?us-ascii?Q?fcOrJTnPLlT82oJtpCrtXq8mORKvHnnLsD/pl6NmvqjvTVLXF6KMXwcM4uCl?=
 =?us-ascii?Q?V/R2Z1KST6l6Ac8xBfyvsun1CPr+4DifRfICTq0494RHe4+jC1+SiL6rfD4h?=
 =?us-ascii?Q?fRFoT3SqDw0w8pXLb2Fa6u9+rjH1whmp6QeUtbnp16iedFIp1jw0x1Xha24a?=
 =?us-ascii?Q?8AHku1Zb1PrxjqrXouUGGNGHgTfYt/Ctequx2PCPARoaI3Sw/W27ecpACIRM?=
 =?us-ascii?Q?iGtLaT99SwOc8t32Gzmh2x9oSMloPQdvQzFH38z/vQvJ6ejK6PvRXVaPMf0q?=
 =?us-ascii?Q?0D1KQX8OMT3ppKSaUypEV4Kti3iCVgfErdFflEunXBPC9H0XBn4fbqiCtMC0?=
 =?us-ascii?Q?vukNN1wauJ7OW1Dtrv6tQ3uQeBYvPUGxc4LW1e1qfZmXGXlH2moqvZr9BqDs?=
 =?us-ascii?Q?/XlHl+440devnNHyq2lOo4raUc5+5DKxrlS48O89zBxojB76DS5Ewj2w4OgN?=
 =?us-ascii?Q?31xk2i79g/e26kpT02BAWnHCSjK+lp3JdIoWq9y6Wi0n1TBqBJylx3C7nYeE?=
 =?us-ascii?Q?Yhrtbs3TyJQrsy82iicB89Ija5+2om0PNBaZ7CWD+c/IQfBORY2j6oK57+nn?=
 =?us-ascii?Q?NPba/+fdJ1CEcmH5jruei1HhLR5sk3PBo+yxpYXewM+awFnQy9NjzXAMu3A6?=
 =?us-ascii?Q?lORQbnfcF6oeYihfApuTe3aPaYDCgROUqGGe8X35LrxIk8JnBt2SUGgZ4mH3?=
 =?us-ascii?Q?X1wD46D4Ie/XwjOdXKYsbY+kokGbOgLb9HvtZhikbbZJYdkOGVZDi3L0xgsM?=
 =?us-ascii?Q?pyIDXn8+kBrybxGV0CcwD2hexl6fLKRJfd2Sd8+Bp7uXZ4+ggBhGOsLF2h6W?=
 =?us-ascii?Q?MBrUCEliGuwRbnXw3unmqU6/ge2N+rv70N5qPoTOuM5J3E7/frvj8oNeBFXg?=
 =?us-ascii?Q?TleEtmbVuRPMp1aViYj/W9FiVd/p7cDA5ivtN1LgkfKhcFREpEBl1C62t4pr?=
 =?us-ascii?Q?Iqr3vYJHLhbstwfPrfA5i0wVPw/e60INwZNyLLNMHw2G+WilLDrc8csmRIdZ?=
 =?us-ascii?Q?JpgqapxkJaoQF1+WGp+jpjqtFqqWwccRIOMy9SvmfLTEnhjBLVH2iIveWPtW?=
 =?us-ascii?Q?qu/W/SYmG6BoiFI+Whf94y364xz6X9Ho68R3QBRFiNTsVp9QCGaFI58UFTnU?=
 =?us-ascii?Q?7GcXql31PWpdzAcp2wZAbxYbAOiXKHs9fnfJkCkG1qQmqloP74we4Lkf6AIx?=
 =?us-ascii?Q?Hg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4aa994-63d2-4265-2391-08dac23a7ecd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 10:09:31.7154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mVcldbOLVPjE7hsfyne2vU38rdz3jM+A18kmIDxnkZ/27p+RvISE8NnZO+PP6WpZSeTSmKaqR7Krj8cPfb/ksMXcR2Y5ti/t8jkKgUh2Oxg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667988576; x=1699524576;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9kWisQdJxiOqp8k9BELuDFTx7eiju9iS0R/ufWcKTv4=;
 b=buLvtwYohX151Y9jhRRk1LOOM3iI+o0TTCHXTiIad8f6D3pJkHc92mqK
 B3J3eUd7DVqs+hdy4IbVPdmmhxLFX4ktqT7AXqmHKBFUl4le6m6lU3zo/
 9hpRZlCclPFbRYzZArv5p3TynWYTy/YH/8pYhKgnWM8DS26AOhMv5pKEv
 xxbnOd6jpV1wY2LOjG7oIllPqGpHZs9NSW5O38YqKKin+LaTUUP2BeSFP
 AS+oqPxFCqXPX1N6QWXfd0L3+Z7bbX4tIgCSkwNReketJ/lFzNcGA5LE4
 jxxklGYjYN/b+Tm8Y4oXOJRz5BRPBywKdqDbq+5xEA0mE3Z2PoKu6UPvt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=buLvtwYo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
 instead of TTY
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
>Sent: Friday, October 28, 2022 6:57 PM
>To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
>Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Kolacinski, Karol
><karol.kolacinski@intel.com>; intel-wired-lan@lists.osuosl.org
>Subject: Re: [Intel-wired-lan] [PATCH next v8] ice: use GNSS subsystem
>instead of TTY
>
>From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Date: Wed, 19 Oct 2022 11:56:03 +0200
>
>> Previously support for GNSS was implemented as a TTY driver, it
>> allowed to access GNSS receiver on /dev/ttyGNSS_<bus><func>.
>>
>> Use generic GNSS subsystem API instead of implementing own TTY driver.
>> The receiver is accessible on /dev/gnss<id>. In case of multiple
>> receivers in the OS, correct device can be found by enumerating either:
>> - /sys/class/net/<eth port>/device/gnss/
>> - /sys/class/gnss/gnss<id>/device/
>>
>> User expecting onboard GNSS receiver support is required to enable
>> CONFIG_GNSS=y/m in kernel config.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>> v8:
>> - fix example path to gnss device in commit message
>>
>> v7:
>> - add blank lines around 'GNSS module' paragraph in ice.rst
>> - mark '/dev/gnss<id>' as a code in ice.rst
>>
>> v6:
>> - enable support for CONFIG_GNSS=m
>> - improve commit message
>>
>> v5:
>> - fix "ifeq" in Makefile (wrong usage of string)
>> - fix description in "#endif" to IS_BUILDIN
>>
>> v4: change Makefile to build ice_gnss.c only if CONFIG_GNSS is set
>>
>> v3:
>> - remove unnecessary #include,
>> - change the IS_ENABLED to IS_BUILTIN - right now if GNSS kernel
>subsystem
>>   is not enabled, we also won't enable it in our ice driver.
>>
>> v2: fix sparse check warning, remove fixes tags, fix commit title
>>
>>  .../device_drivers/ethernet/intel/ice.rst     |  16 +-
>>  drivers/net/ethernet/intel/ice/Makefile       |   5 +-
>>  drivers/net/ethernet/intel/ice/ice.h          |   6 +-
>>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 380 +++++++-----------
>>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  18 +-
>>  5 files changed, 167 insertions(+), 258 deletions(-)
>
>[...]
>
>> diff --git a/drivers/net/ethernet/intel/ice/Makefile
>> b/drivers/net/ethernet/intel/ice/Makefile
>> index 9183d480b70b..7bc5ba52e493 100644
>> --- a/drivers/net/ethernet/intel/ice/Makefile
>> +++ b/drivers/net/ethernet/intel/ice/Makefile
>> @@ -42,8 +42,11 @@ ice-$(CONFIG_PCI_IOV) +=	\
>>  	ice_vf_vsi_vlan_ops.o	\
>>  	ice_vf_lib.o
>>  ice-$(CONFIG_PTP_1588_CLOCK) += ice_ptp.o ice_ptp_hw.o
>> -ice-$(CONFIG_TTY) += ice_gnss.o
>>  ice-$(CONFIG_DCB) += ice_dcb.o ice_dcb_nl.o ice_dcb_lib.o
>>  ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o
>> +ice-$(CONFIG_GNSS) += ice_gnss.o
>> +ifeq ($(CONFIG_GNSS), "m")
>> +	ice-y += ice_gnss.o
>> +endif
>
>That looks weird.
>
>First of all, Kbuild looks at both foo-y and foo-m when building a list of
>objects for a particular composite (in our case, ice.{,k}o is a composite
>and ice_gnss.o is a part of it) [0]. So just
>
>ice-$(CONFIG_GNSS) += ice_gnss.o
>
>would be enough.
>
>But I would avoid those IS_REACHABLE() all around the code. In fact, you
>don't need to build this file when the GNSS framework is not usable from
>ice. So, instead I'd go for
>
>(Kconfig)
>
>config ICE_GNSS
>	def_bool GNSS = y || GNSS = ICE
>
>(Makefile)
>
>ice-$(ICE_GNSS) += ice_gnss.o
>
>ice_gnss.o will be then built only if GNSS is reachable and we can safely
>call its functions without any IS_REACHABLE() guards.
>

Many thanks!
Fixed in v9.

BR, Arkadiusz

>> diff --git a/drivers/net/ethernet/intel/ice/ice.h
>> b/drivers/net/ethernet/intel/ice/ice.h
>> index 001500afc4a6..de6763206113 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>
>[...]
>
>> --
>> 2.34.3
>
>Thanks,
>Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
