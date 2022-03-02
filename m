Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1884CA31A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 12:15:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27FC340423;
	Wed,  2 Mar 2022 11:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ssigka-2KcmU; Wed,  2 Mar 2022 11:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECD8B40151;
	Wed,  2 Mar 2022 11:15:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 010FE1BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 11:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E030A40386
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 11:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8m92ruOcqVUT for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 11:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6B6F40151
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 11:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646219729; x=1677755729;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KVSCXeX2xLM5Mj+02JRqMEO4GrwJqy5tu0cLqDjQXcQ=;
 b=QHOiTZUyJVs8PuQf9zprcZ4Y301YhSWAmvy0UTgvw3SRFzHqY6deErI7
 XOS95bD+l00mDP1u1tIfG4tU1rDOknqvtR04ESmhaInEf6Whl9c/j7apa
 VnCeuWCMnrTnU/u7WuPpQQzjDVUT0Jj446JUQTB+dYCVYCgl9Yw1YyoaN
 S2VCRUgp2HCFHpUiNFbeqqs3hoggaGRF2lDS2RYfatWwlvsynbZVsRwPe
 WEDa7NMg62ch5OtMYk4K+vs3KWbxLm4IiEKX5eQhd2gki7mxVPFUgMmVY
 m+QIbMe4xKIHDJLQEUuk04bQE/omybIKL78WebmBP4XgnuAEqXmDQ0OC4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="278048155"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="278048155"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 03:15:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="630382152"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Mar 2022 03:15:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 03:15:28 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 03:15:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 03:15:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 03:15:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IMcR75vvN3A9IpgkmN+PvmNni/o8iCCCQMNOYLVtHmrm7loaOuv62i0x5QIJySiwUh3YN+pWtGohBIOAqHSXPKfuTJAGprZeVYRgGwjBrAY44wwtT/zTnzns5HePdfruQxcJ1RDCa1chyNLOA+4G79dnPDv9a3v0YSSG4sD30ww1y3NacqwAvv21GlSeaQzUimrzL7FqltHhGFwPCiJi8m5qK3Q+hLgClETaJBk1u6JEArD4+SHWE/EFyBlLUXSNph60hq5E9wlnpDaus7fKfBjjtl9ftv7BDm+j7gQaFqI1upwX5+HIDeQGGYfdj+ktbbWWxJGuR+Naa2ofx4sRtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rcGuvNZq/epNIC9nMCr48mVNnptUvIWCtbFOXUifRc=;
 b=k5DRLFeBz0zjvIbvY69XboPJkN/wBRDzcyU6+fyF8nLH7plyQScdLrtJ3H48RNFa/qzoYxdgEaT/H0Ntd7itDL2uwH6yoJ+UOG/JIz1AfecXsNMH7hAx8k9JapF0TZ3lNAmPa2nEF+mOCe29AoDoD5VTkHo2hhtHVBaVirQ4Wjy3KHPsv5zhVf4bmJIjFJcz96bhcvQ3xWksK5b5wIIDRm+YyzsWSxWn3XF+mY8XU6Y3bT2abbJhqBay4RDJdWMAw9RuXT0XVBVyTFR8dZj9aC40r3/BX9sNNftMRDcxKT3EeCSnM/xFWryVRCr1eSTRYWfy1AE7bar2rdT/BVecYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by BN6PR11MB0002.namprd11.prod.outlook.com (2603:10b6:405:62::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Wed, 2 Mar
 2022 11:15:25 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::88f4:40a1:ffe1:905a%6]) with mapi id 15.20.5038.014; Wed, 2 Mar 2022
 11:15:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 04/25] ice: convert vf->vc_ops
 to a const pointer
Thread-Index: AQHYKEw4+9qYnkLys0agcnsO7sAmo6yr/Mtw
Date: Wed, 2 Mar 2022 11:15:25 +0000
Message-ID: <MW3PR11MB4554249B9AA483646E83C1919C039@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-5-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-5-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 877e02d8-61b3-4cde-5cd7-08d9fc3df35b
x-ms-traffictypediagnostic: BN6PR11MB0002:EE_
x-microsoft-antispam-prvs: <BN6PR11MB0002A036D561338A42B29F479C039@BN6PR11MB0002.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /xWwXopQfy9i3JwEV8jGYgnf0sdw4kdz5LcMqDZjbY4Sf81DeiZVXd1VV7MbotsAAs3Nv8Vxi8pHUwR6Szp8birapelfXwLft+psF0jD67hLt2T1WyWbaJM7ZIlsjZpM3Yj8CJRaMyNa7rgol15C0pQfta7y6NRh3EB12EgTQRx4ofm3k8bF0+IF+ySik1Wd5L5VIRos1aMCRMgKiHrEwlG4GfHa0txBeiBJtjxdFHNY/yi2ezhvmZybCTr8MeFgDmqQnWOPkpy1Bpzp6R7e/zegtUt4DiCehEPniWzMp7ohaYpwOWPZCI8KCndbkjOtL89r7d3VSE09odxHbhXfQYqK4nCZNO3XnzCmcM/CGZZh5ThlnZvaDTfX8KrB2kMzbtKrSOKRfSpdkYu1MTwK+re8JUfAXzlKu0zJ8/+Siqea9LYsFPFzF703fDWXWFGRzRrBXTRX2aQcWuB2nQc8BQjEPfjzzPqz4ax1SJ+0XLZjEEwNmDo1o/oUrWtia0faRsSYHBbF2mmjnoPHtu06+7GLoMd0Kseib/Z6SohI5lXwR+FNzlrpmHHYcGawkf/fqOvhEKYyQCB0u8Q7SDvuO7VRz3LOMSDJgiIbY21KaZZXIElv0IbCr5vTiKLvni1KHMmgvbQb+Z9zLAw7UOeV6YA/10audYxg6q08s1u/hKWavoSHR/mCocbfuGMCzZSH22SplPQC/mT1HKRAE1SV+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(5660300002)(8936002)(38100700002)(38070700005)(82960400001)(2906002)(52536014)(33656002)(122000001)(186003)(26005)(71200400001)(55016003)(316002)(9686003)(7696005)(6506007)(508600001)(110136005)(8676002)(83380400001)(66446008)(64756008)(66476007)(76116006)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bEKVpFUN84OY5ZpEkklfJK5ZWnC/wkFKA3iksib1ksqdqIhx/s3Y5E5K35A9?=
 =?us-ascii?Q?0DrlMakdrvFODfZj6vXgquhcgpqR+Otv69vW2vhR9xY4g6O3uGnP9xrw8ZvF?=
 =?us-ascii?Q?7gTBHedYsf/Y2tM6ZSSeKyyxd0n+0/w8j9XrffsA/DZpVj6l5glNYmF2WrP7?=
 =?us-ascii?Q?bX+sVeNYupzzEM3FMTsVvX9ZdkX2HTCM5E6DHTdU1Z0kiDHlKxftjFV8/tZI?=
 =?us-ascii?Q?J17eI45m9ijCKmWs/fDPpiSIQV4vzNJk5Y+aE2kfqLH1yX3WGDEehTck12dr?=
 =?us-ascii?Q?JYYs16nN7o38FQ8hzD0wTb8gSM2qMZXhAbHa2fDxMgtayi44MQlBTSNKtcur?=
 =?us-ascii?Q?rswLCmDxcFmJI0Wpx/WBaT7cCLiHoA4cFM7Ur4fo7mgCuGeH8bBtZN9ZlP0z?=
 =?us-ascii?Q?MDgsySN0c2OYiOms/bzKM4vPGX/7JzjcHFvCzIHrUXfHrUI2HZrYJ3HEjPl9?=
 =?us-ascii?Q?TJb+A+5bZ5Br5gUhNjVMQcmqSEoc5zXC+XoSL2mR1ZHIpSoYrTcjFJHCUp27?=
 =?us-ascii?Q?VdBEskP8NxpKVb+epx9g9/YglD/HBev1u0OUzSxxPrHOdKYv0DygeBEJrYr5?=
 =?us-ascii?Q?ti11ySvJAXlE2kFf8V87CVXx+/EECPBhPl5mxNa633mJ5jI6yyJgqp6rB+BR?=
 =?us-ascii?Q?zrDFhMAdiOPM9NAdQNaWZkXCBvbowrxRChmYumPSb3849Eb8Z2T1s37kHhEa?=
 =?us-ascii?Q?XYARH5IC5FLAmso9cMgv02qDd4oMIal0SM+7pB7Md8fZ1QzmaCpPZZ7N5ATb?=
 =?us-ascii?Q?e2zCE4JHWebH7LDr834DvH4TRZYVTezM9paFqQzJfQAULLjLrd58KkXw3n2E?=
 =?us-ascii?Q?iwvQXyFuUQpU9wNvQcW4UNKzNbJQ7B6abyxbqBAXQ37Q6owzP96EGv5yuP2K?=
 =?us-ascii?Q?uIzmNrEj4PWAa7hesosqJiJhSflLZ5J87FIyKBudK1BD2VgJx0HKCq5Pfzc9?=
 =?us-ascii?Q?etjISouHMbZ/ckm2DiD7GD//2aEXjt6NHXB06ZXpe2Gj44xeTyszEKuxwsvV?=
 =?us-ascii?Q?exOCAKiFplQL2aBpgNV8ynDYERRWi70COhHDswAraUDBs3BBdszYk23RoW8v?=
 =?us-ascii?Q?Yfu6967DIqaaLVWu4kGSPyXntuu1MMvOdijsqv4BoQcvVOnUC/N9ZeEXe2jt?=
 =?us-ascii?Q?mJxUoWlz1pz1WvhAkH1T7hsD1ZPzK/9xiHkp8W7UkwDKpqqIGBHFAmFDuQEn?=
 =?us-ascii?Q?KeMfAhtstGc9VAoD5JNqNGCkq1yiAOaOokNPMe+AFyZxvm9wKX37QEaB2Fll?=
 =?us-ascii?Q?/VFmYcyKpEhpZ6nvArDiy6Pd3YdD42G/bhdCa1/8boAUEG7GzEsoPhBbO6YS?=
 =?us-ascii?Q?vWAjRVsL38sXVtB7RUnn4dbRqtFCtvQmX4+gk2NIiQvOuSH7KRhPb5qnCywU?=
 =?us-ascii?Q?j6QRoz4/Q1dYEMR9GrRtDmkbfoKmPRKoycnuPMvfkkj9yLtkisF0yEp/bjWZ?=
 =?us-ascii?Q?tn+Ed/3UIVmle5reXpZnF5U1zJF0GxXuO49pN5SVbyN8nK0Upp7R2dpnn0uP?=
 =?us-ascii?Q?D0eo4DKQfJDovJYhQ9UzCydDYwyVFqNW8qXRUmsCHPdfvIyFgR3iH6wg8SXl?=
 =?us-ascii?Q?pCRYZ/OZiHEn/Iw73Elq+EI/Ib+pbm0qAJ/+g01/Ex1YQ82qOC35sg9qyLAl?=
 =?us-ascii?Q?cbAAtDF0FVzCrZt2EXi6BzH+PiPJfWM0fp7q2UX5p0U+s7c1kuN00VqsISSd?=
 =?us-ascii?Q?O/E6tg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 877e02d8-61b3-4cde-5cd7-08d9fc3df35b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 11:15:25.3954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRhZlvHakN2ZP+LiFo84qOFtqAQI3UHshMJr3UiciYG4k0PMHbgBXkSVPzJsv6G9qwL2oSHdF65UJ0gu7oNv67FD2x1fblCHBM1RhFbZ1Tw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0002
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 04/25] ice: convert
 vf->vc_ops to a const pointer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Jacob Keller
>Sent: Wednesday, February 23, 2022 5:57 AM
>To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>Subject: [Intel-wired-lan] [net-next PATCH 04/25] ice: convert vf->vc_ops to a
>const pointer
>
>The vc_ops structure is used to allow different handlers for virtchnl
>commands when the driver is in representor mode. The current
>implementation uses a copy of the ops table in each VF, and modifies this
>copy dynamically.
>
>The usual practice in kernel code is to store the ops table in a constant
>structure and point to different versions. This has a number of
>advantages:
>
>  1. Reduced memory usage. Each VF merely points to the correct table,
>     so they're able to re-use the same contsnat lookup table in memory.
>  2. Consistency. It becomes more difficult to accidentally update or
>     edit only one op call. Instead, the code switches to the correct
>     able by a single pointer write. In general this is atomic, either
>     the pointer is updated or its not.
>  3. Code Layout. The VF structure can store a pointer to the table
>     without needing to have the full structure definition defined prior
>     to the VF structure definition. This will aid in future refactoring
>     of code by allowing the VF pointer to be kept in ice_vf_lib.h while
>     the virtchnl ops table can be maintained in ice_virtchnl.h
>
>There is one major downside in the case of the vc_ops structure. Most of the
>operations in the table are the same between the two current
>implementations. This can appear to lead to duplication since each
>implementation must now fill in the complete table. It could make spotting the
>differences in the representor mode more challenging.
>Unfortunately, methods to make this less error prone either add complexity
>overhead (macros using CPP token concatenation) or don't work on all
>compilers we support (constant initializer from another constant structure).
>
>The cost of maintaining two structures does not out weigh the benefits of the
>constant table model.
>
>While we're making these changes, go ahead and rename the structure and
>implementations with "virtchnl" instead of "vc_vf_". This will more closely
>align with the planned file renaming, and avoid similar names when we later
>introduce a "vf ops" table for separating Scalable IOV and Single Root IOV
>implementations.
>
>Leave the accessor/assignment functions in order to avoid issues with
>compiling with options disabled. The interface makes it easier to handle when
>CONFIG_PCI_IOV is disabled in the kernel.
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_repr.c  |  4 +-
>drivers/net/ethernet/intel/ice/ice_sriov.c | 61 +++++++++++++++++-----
>drivers/net/ethernet/intel/ice/ice_sriov.h | 13 +++--
> 3 files changed, 55 insertions(+), 23 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
