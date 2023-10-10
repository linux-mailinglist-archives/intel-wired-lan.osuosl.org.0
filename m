Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7DC7BF99A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41464418A8;
	Tue, 10 Oct 2023 11:24:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41464418A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696937059;
	bh=QjI9S40GmssVnK7F1vMVMW8LlEdVa+coQwLtBS7wWcY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lmpTb1Crev7ScXM+JzENQ6OCfb6NcgVwvoPLoYjAvW/5EctrxoSs6V8luAZhwp66i
	 Vxul6CAzbPvC8HUrlJvVgQnPUg+lhDcuAQUt8sjMqrXgzQuVNHcOCX25TA3IPiiwyw
	 QrIiDj+Dft04lAp9u26mdnvu3JTLRFosMF/vLcckPZJhOMaKBiwRMxeS0uJoTdm6Fy
	 R17A25PS1ulRx5YBgI0Rr1Udi2FQVhEsQCACQRxhHJvlK22SHqNRYVmDvtDuGX266s
	 3BbSu93j2JfLOssp6knDP8ztSIh6eePm4NpA88xn0eezRC+nWIuXuC7LWlLZr01Jw7
	 smASYKkJa1ihA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6R6Ce5tSE5Ml; Tue, 10 Oct 2023 11:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 677EF417A1;
	Tue, 10 Oct 2023 11:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 677EF417A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EBEE41BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C30BF81F2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:24:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C30BF81F2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QDUJulqc8Bqz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:24:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CA3781E61
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:24:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CA3781E61
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5926815"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="5926815"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="747042038"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="747042038"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:24:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:24:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:24:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:24:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RcSkdgs30mz58MSrzrSGM/5P38QbH6pczRdgejlYzvkj+ZqOTGOKHIT9YJ5Jvu586yd6ud7saS54+nWb5dhVjHaT6tMK+geSage25mswDKt3XFzqT5W/GpPBHNi0xMVOLYEV7p8sHnQch/w4kqLFOwQoRAX8jn/z6f4O79l1OyKd/P96kUz0070y783WmMJz7BsiHuKQ/7in6zhyKrpCC0JF1QRetW/vVvGAG+iDGW7DZ0X8Q8iBNMxjyMse1fKA+1guJTc6w59r/Y8uqt6cxOsfT0txSauzZ/jXFQgew/JcaZ1nj4sEkaOhoCsyQVF24h/zsog9e/gTPyBUrpgCAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9aIYKHeYk65E/NGhaofkM3iMoLK8ReA1drS3uq8nYg=;
 b=HVjyKpL0L6k+YA3JuCQnn7ahNq0yIuA1blN9pRDmQRCXFSihP4NzEJixIhqYG3o2X3eZX0IpZsbzv7Dkdydn5fDgnUiM2uiUbWXaKZ5tcZx1Cx1vms7O1yNCqOmEiAHbZ9D4m4KEN9+fYPfR3abfwf1sgtqnCdbvVcHIe0Vt4Y5rkn0wvCrOwezir6sHPcA15PBz4rWKs2hzqYpegofgQDGvH/qUdBsh+9h6eFPm6J2aFjqBITe1BZnc+dSfp+6KIqtIlQGTgrXucRsAFq+0chfb8NRRfEmSKXRomWedfgzmz2zJcYSHIfYEsS17eMDRBsdPSnD8Ly1L5TaCmGvhtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by BL1PR11MB5956.namprd11.prod.outlook.com (2603:10b6:208:387::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:24:07 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:24:06 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about
 old bit locks
Thread-Index: AQHZ+xBgbMkUmKROTkWiZg44dpYu4LBC4biw
Date: Tue, 10 Oct 2023 11:24:06 +0000
Message-ID: <MW4PR11MB5776D1848FDDA708EF2D7F5BFDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-2-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-2-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|BL1PR11MB5956:EE_
x-ms-office365-filtering-correlation-id: f721753c-49f0-468c-5ad5-08dbc9836a20
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kUq23osjolQEkWmaQ8OJv9IQ5ahq/DS6i9KDjS6Zh6xi+gXl0aGxgOJK+/ta1QMmOT7IXtQYHVb+EUBsLumZJVVfpMnjngJK5PVk0MOJ6iCh040sxoHterjE2ySgtuXCREuqexs5C07XEbYe+hejrfqAVWAm1iHTDG78e9bVZBet3qys3DWXkEf2lcMR34MARP/C1ftSqfNGG4RD8wCRnmBxOXvtTxto/XNRXdWLSCzSE8ZfIFSWWi7ZzdmWaQq6DO5lZ4+A2urVpi1LYH5tGr3nkXV46NQyPJ4NOYC40M+Awl/D1aj47/gmg8NNjKAFkWqWzJLorBjTyduhrGFaSVfVkcQS4wnbH9nvfmn15kZYHoncLxTyRCNgWkZz8/DssQped0/g1afPzH9Q1ubMtMug50Z2OsBJv+i+yXcaY9Sba1J6uunL83QMOLS5mDE6o7uAQSj2npz+kdfO1abSEdzeAN0PIyojOGrGYIEEZ95ghrUF1Z+mMBz1z7gsR4tqt/3i5e2tJ5jkqod1wNyISFI6qNBV3sVdIeCdot/nn7XaMEwa+qo0l/5SSbwcvYIzHRqrwn3YbX3ywiJGsAJBcssdMMkB+MmUMmZfTI1ppgE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(9686003)(53546011)(107886003)(6506007)(7696005)(478600001)(966005)(71200400001)(26005)(83380400001)(2906002)(5660300002)(66446008)(66476007)(76116006)(110136005)(66556008)(54906003)(64756008)(66946007)(316002)(4326008)(8676002)(8936002)(41300700001)(52536014)(33656002)(82960400001)(122000001)(38100700002)(38070700005)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M/GUh4KdNE69cYJqJEmcAXZUXKhQXhYsq0q/e083yritqSshO1He/AEiBanj?=
 =?us-ascii?Q?nui3ruKs9f9mJqjG9God6W+12eDyS7+q3LPl1hkdhEUGq7t/yl0Esyop+x4y?=
 =?us-ascii?Q?yalePDW9T2xyt9iVE06ScIrBsCF1uE7PR03a4b08qHRevaKubtw6e7/GJVLR?=
 =?us-ascii?Q?Clf4OFdpOSopF7J7J3zQUQbbrDw/snizit3AO+93CgE5Nsu1mjboDumoHIrI?=
 =?us-ascii?Q?sm6SKavHeXh71p4luYMODt+q4CN3Wn5Rs1KTZZXMwjvLnYdI46D2dw55Eu09?=
 =?us-ascii?Q?vKt0xCKFtktv3IC0t3hsQjFh9df3Oz847EnGKp5z7iVg+WWRc8rnfKtRaw2c?=
 =?us-ascii?Q?y7KOpWGPWrCdbjz+BqNfeInGv04t1XPFlT99rtd6BqV9CQclWFD4Gxrd0BTD?=
 =?us-ascii?Q?EB79LsQnwPEmvu82+otu5WGmGb/+9I1GjsDY3ZIQ6r2BOo5Nm18sVklb5VWf?=
 =?us-ascii?Q?cRvrNDtPy1edYqlBcsJqL6itu1cxHQw4dK5CforFVbO7TCuNZxM3KJIdRh1/?=
 =?us-ascii?Q?wLIGBuh6YTHSJj1/SFgIBh3Op75+p5nNJZItL1gwaEaJj4gjOrJQPkIhh5Q4?=
 =?us-ascii?Q?fxzHlzKCTUCnk30I18jT+SNwNEsIfNOuyRqSGY4v0twycj0y/SfvAkv/FX65?=
 =?us-ascii?Q?o9HqKc+K0DYE56SPxqmbT28E8trbEep4mdafVYy3auKw70XOb3DKoUVARUFZ?=
 =?us-ascii?Q?mmh8j0IxTtPNA7oeelIqhGEKE+fOw3p/DV6KtmC4gQGc6ANtuucU+yaNzUO9?=
 =?us-ascii?Q?jhsq2j79azkqTopu15nrDzHR4vOGOr0dR6L+e5DbQ/Lz+KIC/C5dvBxGl9lX?=
 =?us-ascii?Q?nwFM7UCFS2tMNrGbHbyUYyHY21v/WUi5C6e/jUR0VYBrQCHkua85On6OvaGT?=
 =?us-ascii?Q?ZGSiaO7I/LQrFMwQTUOeHNbb6CFd8FbEMVlCtZLpnDmClpu/EX/oZdJvt+Ri?=
 =?us-ascii?Q?N1NaRBRr24HR4iSdKtJ4XXmr2uuEJqkniunM6i4ZCfTt5Yp5LYoFAF/tsZdL?=
 =?us-ascii?Q?fFfiHIBlLUVWKJ5VLgTBXj8oxOpI1TKHt7oybGwjjom8fl4y+NyOIfNLVhdv?=
 =?us-ascii?Q?BPg+FSZVoQJV29jRz5/34Dcu9R0rDzRv1/lvnBBEXU4f5oXTPQRWPRlPGeUe?=
 =?us-ascii?Q?ZItbHWNdS9cWA7TkHUwEhN5lttliOffR8ajvFHUPi21ukS2OJ36wZwc4H32m?=
 =?us-ascii?Q?vEbeFx09JovRlynwY8tJwXXSfP5Aeb8bl0VSQXJF7cZ2WJUXwSv3ssH5vDZ+?=
 =?us-ascii?Q?BwHO2jHXfskxvmeSGrlC0IbyG5ReSqWWwTudWIHMH9M/b5j6AaO7gWxXKXOU?=
 =?us-ascii?Q?Ln3ySscJoW33rdb+LmM0AUIU0vlxdLNFWgB4KDa/8XI35kqudskQ6xdwV/N/?=
 =?us-ascii?Q?ZqSTq7wSpuaLfQWPejNGd7J/TaVTa55gc8hlJgmEooYYAkpYXKi0PTYeUkzn?=
 =?us-ascii?Q?VnbxFYx6WPHOU3r0HuSuMnAW5LU4zNfhjz79AVoERlLsW+tojWUNswVRlm8R?=
 =?us-ascii?Q?+fn3vu+aQBeo3W06iBDcMB2ENxZ0TAvaNMM9imTaUIO7ymGHWGZn8UP++bBC?=
 =?us-ascii?Q?ZNm9UmGxVi9ghY4RK/ulIKpSVHdI6nc5np+rAvSz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f721753c-49f0-468c-5ad5-08dbc9836a20
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:24:06.1225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LGUH5DXXtkR4ziNJkIGruC07ABthfLxTwfiKYkf2R/joCN5iSObCG473bp6UP5+DQmeJKOzy/CmBcwAujGAnGzYAMfj5ZEhFZWb/GGsm7ME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937051; x=1728473051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=06E9RXdZPC9JW+s68PFWEOODbemJQJer5t9TQmkVBhk=;
 b=UlZCHPxesA2614OaBudTwrwSBVuFoIcdnTUCm6xWnW0yX5ebBRw0YX7N
 YmEDmEEhJ+CcCvA92siaZR6kBPxZ7nphC+9TNMtNl5w0FssYthmKNZvfa
 4Ex1ozVBGo/UgAT4U8SjE3JAuL9I1QHwlh/27V3SJnCYw5FfpGs/UDaQN
 ONrm8nmjKHvcMYaoltTCf+3JiKamDW8DoOkkxYZ10L58ge3+mgU8qdDpO
 TXtkciiniWWGXc5+MG95ZH2c7eKgIn8yXLg81TVDlpDa4oKeSmrGqA+DG
 7XHMVyAnDSrKEox//1E+2n1eF6/vCj3hfYf6d6O6MUNAUCJG5dPWV2mt8
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UlZCHPxe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about
 old bit locks
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Tuesday, October 10, 2023 2:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 1/5] iavf: fix comments about old
> bit locks
> 
> Bit lock __IAVF_IN_CRITICAL_TASK does not exist anymore since commit
> 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections").
> Adjust the comments accordingly.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Thanks for your contribution, Michal!
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 43c47c633162..98ecf5d5a2f2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1276,7 +1276,7 @@ static void iavf_configure(struct iavf_adapter
> *adapter)
>   * iavf_up_complete - Finish the last steps of bringing up a connection
>   * @adapter: board private structure
>   *
> - * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
> + * Expects to be called while holding crit_lock.
>   **/
>  static void iavf_up_complete(struct iavf_adapter *adapter)
>  {
> @@ -1400,7 +1400,7 @@ static void iavf_clear_adv_rss_conf(struct
> iavf_adapter *adapter)
>   * iavf_down - Shutdown the connection processing
>   * @adapter: board private structure
>   *
> - * Expects to be called while holding the __IAVF_IN_CRITICAL_TASK bit lock.
> + * Expects to be called while holding crit_lock.
>   **/
>  void iavf_down(struct iavf_adapter *adapter)
>  {
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
