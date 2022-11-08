Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 019A8620D6C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Nov 2022 11:36:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8918881761;
	Tue,  8 Nov 2022 10:36:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8918881761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667903764;
	bh=lOZxfugXi6yb5JzwqZoHr8eu0qnX+nAQmLq9BQrXPnQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g9a6ISBhKla8PFiOd7ipBlZpFlHbEK9pB1XNPR1byDqeWuDWXlY2HJIrER8daw0un
	 m/owHjIcwjBovptR/djZz7du2V3HwmDEwY/IEkyRIk/bL2kVM7hthZYfia324CKpC+
	 EvzNXY0JwwXdHkYzbZqfUG8vAQTkxg4Uv0TYRd0tNIV5zYDafScf3g/8BeoVEFY4Cj
	 VdN1m1DlaWgeIh11vYAlULc9nTZFmSIwfLqD0FsOJYOX/ccqlXWLY5D93H2F4YEIdD
	 BBXFcOvGETRZTYYBNZwNGn5qlyNAqZbyLuFhwMWKev2cZ3z1F0gMyneZ5uJSD2OAkc
	 +cpnNwUwIQR3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oyf8zZDtBvTL; Tue,  8 Nov 2022 10:36:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C7A581762;
	Tue,  8 Nov 2022 10:36:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C7A581762
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B94D41BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:35:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A03EF60B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A03EF60B9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fX3tNn6gQtC2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Nov 2022 10:35:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E366B605E0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E366B605E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Nov 2022 10:35:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="337389291"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="337389291"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:35:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614233364"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="614233364"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 08 Nov 2022 02:35:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 02:35:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 8 Nov 2022 02:35:55 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 8 Nov 2022 02:35:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bglVfnGh89XcC0jHt4uZOK355m8JIUV6Pavs7hGm6TXgfxNllfYbtnBCg6A3SFSeSUiWCP7YudONFuT2T70quCeTr4Bw366tP9huR0lQq011x308OONNOqG3tjy8BAJuENNFPeOtpcSdrhgxrQHcqpuDECcj47YwhlLW2G6HX2W1cbDpCpQnfvw4ycW4+UY0axBsWgIfd9cfdBsFU9eCtYP9J7Wvg0NzSKCKCMrfLrewLDTqTaHhPTE/ut7lqBjeK9yYYJz2EvgD8NOMlZQCZALoqLf5ZuqAwyUN3/tUF0ArqOm0EjHI/swSgj/f3hPNLLStftXQgw5avlE+qOqVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4PWpQAETjv17WqJOoa94cKe6aZV7i3dLDPleDOehIw=;
 b=Fi6RTGp7L4glSgdBlhut4S+VJa6yBK8mHZxOQ3HCXSSfnHsxbVJ79n5xOrDdcPImSI7LyzaCzlGvYu/WDy3ZcJAuXl3q5DOkv0QtRrcFBUnlu/bjqqpEdbqlOLZjO/Iy9tvBPUFC8L/954Idljgpsdo9QPT3k4Izox1xI3ITu7XyzGBkQ8RDZo9onBkbKAB4fNSPl6qYeodtYVCaXF0T6cxzAByoAMFtW2Ib6QSEsTKLz0zY5YmgUHD2T9KbGy/Rxcl4NdrF30iPhSaq17TYBePKsFa6GZBjQmExup1QyWWgYjTwd45FkIT5hIHbfAc1ghcRfu3GcwIoGt3Ep5fGMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 10:35:46 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5791.025; Tue, 8 Nov 2022
 10:35:46 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next, v3 1/2] ice: Accumulate HW and
 Netdev statistics over reset
Thread-Index: AQHY6hlicXXy1EgqJkq/Oitw0YYZ964052SA
Date: Tue, 8 Nov 2022 10:35:46 +0000
Message-ID: <BYAPR11MB33673CAF8446BB9E158F6F2EFC3F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
 <20221027152401.30801-2-benjamin.mikailenko@intel.com>
In-Reply-To: <20221027152401.30801-2-benjamin.mikailenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6202:EE_
x-ms-office365-filtering-correlation-id: c974d93d-8152-4e78-9aac-08dac174ff2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3VFZlDR5WZJn0uAavdcA2h/mfZVLawl7Q+lhb6hxT32Mp/ojNockE6mGdANHiFyi5B7aoo3Z1WmZRv8mJsIPU6lUKN59CDPBNIhv+uB6ztazeBw5E6jwmTGiAYPFGEBIWjl8FZaYQv0t1xNd/6Vdle5GICcsFduWKvKXrbdIBFZc59vaAjqsDEXz9C+Ox35rQUUjZ4MkfLgNlfX3XepgyGqi2hOvVLrkPqiHJapf145tulkDYS4NWZcFUecg8NF3A9Joluy4IrX0kNRGl76rHUtZ9aVYqIdRNzdrDUEIPHcWQNfAAPDHQSbIC+aRF+TrlDIlLO0NZIoHrq0um5ZhyLwrswVlNU8vfSbCwUL2HO2m9yRkr2TWyhVNQiGlPnlW3c9jh9pcuiTSRKks3IKgMa093G5o+l+hTkOtgp2rNGNksbs9UEG6uRkdEXSGBN8Jkmrz/Kqwzpf8aWzeb36OQEwq5xS4JFpuAtl2pRmdPtd/mIkAD83dSrtRy8UfSiYq3d4YbgKKrNyOZ1/fSTXXEyznzN51lK7T3ifIhBwJlM5gZQ7dWa4L8JS6HhDtxTkAE8cNnnkQqlFGnfXN7tbj/mmX1kaFmP5U39Xjrv8OFmL5tG3KjQSdxHYdisreU+XK5H+vZzK/5tXq6c2dULptW+0BWyu2aRqbTQySWed+NZBofNoX9GoGHWOSBSppPl+Jj68OOPoIpdAbmcW4Y7ubt1hIPgPSeE0YerwrkSiwO+H+5NCc4QfHHz1IO6FnguEXODbEwlBF5cN6HQc7Rt7SxQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(136003)(376002)(396003)(451199015)(38100700002)(38070700005)(6506007)(76116006)(107886003)(186003)(7696005)(66476007)(5660300002)(53546011)(66946007)(122000001)(86362001)(33656002)(2906002)(4326008)(82960400001)(41300700001)(83380400001)(9686003)(316002)(26005)(66446008)(64756008)(66556008)(71200400001)(110136005)(52536014)(8676002)(55016003)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5jh5yuY5DB2UuvW9s+72T6HwR5GAN8YvEGfM2fHIVTP7NZpfFSLTGDZpn0eE?=
 =?us-ascii?Q?U2bzaZ/mz9/ImJE+hTKKR+Arm5/eDaLnsFX77R2JBqhqivOTckdq0rVVSDqT?=
 =?us-ascii?Q?fp4pU1vdH+t+Y1lcqO/FssV7joNv5G1C0ouXLUb+r0YAMD3kyMujr2zsfAaz?=
 =?us-ascii?Q?Msabe6YKSpSj7mZ6AZPZ80inM9YFynTIhhuIDeiLi6vM7c+M4Wxz0juyxxvP?=
 =?us-ascii?Q?Q2sB80FtoDiLzayu2b3hbRTLLpOxla49M3N3yAjKVJNW5QnxMumYaJNOZNgX?=
 =?us-ascii?Q?a8ZmRChCLZLkGQfeOEUwd2eZQ1rzQruKmJktpfERik/ae6QgcklvYBo0C6bB?=
 =?us-ascii?Q?osZM9sT99HJTICMBbINUsNZdc5FLxtvikT7ZQyFIo2UepYCpE1qZ9cqZT3YU?=
 =?us-ascii?Q?0Dfi72/k/SUfCk7h1iJ/+HfDnANBCYmEvkKxOfvL3o3aT3bcCV7poZnqwVLR?=
 =?us-ascii?Q?Hx8ur1Oo/mOnLqXbkTg/6AvQVt3J8gElWapurOkXsz2kWHVgo3vj94s/T0B7?=
 =?us-ascii?Q?oUptjZoy/9wUrY28UJgCLU6fWYTZloyUjfWm4OXiOJpfQ+/jlOUwGBbikcoQ?=
 =?us-ascii?Q?zQo+NXWZTg1xttL0CNGHUb8Q4yrV5h6DvAHaqaHVm+I+kFXqBLqJ/ifZFxKt?=
 =?us-ascii?Q?y33ZaZ0cp6p2XSsKzLx3xXYrvKa28kjDbHu33C+wPtWfMtB5yaKztfl9Alhn?=
 =?us-ascii?Q?n4DSzIm+IrzMolSwNzrmERu7hm/UPp3hvMvCqgc9KGfkR2RvfTh0EQQbKICX?=
 =?us-ascii?Q?ikkoUVvNwA2/cil6Vn4Wt6+cH8wIZr6Iz8XJennD5sU8Vyrr2V2cX9KDO6vA?=
 =?us-ascii?Q?kKjUMRfbsxgeda303IsPbc44YR/x0DvO05qTzo/tHVyKgYLao0PVpRxw43gW?=
 =?us-ascii?Q?ty2CQh+GOSBF2d1bmz2UbwCpeZXi1VkbPPU7uZbPPP+jG8wJHc51DtM0X2rp?=
 =?us-ascii?Q?iFYX0/gI5d1gyYzBqiY6Y0fZIROLzBhfeLQ3YVksZjR2iizWMmkQIOAJOmJ8?=
 =?us-ascii?Q?mYnx+H/rz7viNWuxd3axo4jzyC6ZvSonQvgU7zJ9RzQIg0ytV0FZ78W08p/N?=
 =?us-ascii?Q?EerBXEwIhkDLmDWdDJX+5mKzdbzhuPZKwlkK+LN9eP9b/aFWhEZA80AXAeYx?=
 =?us-ascii?Q?iwgizFPpiXD3/LULl6TOcALEUzasF2hgo3D4SzPWtCDFPjGSqjzr86rpjC+r?=
 =?us-ascii?Q?1JBkb0sTnI03bMqvLjawnvw3LBf4YBNPhmQ0eDYfSs1/yL6d0p7NgQv/J6wT?=
 =?us-ascii?Q?X1RDg64AQgpLzvhh3I5mjAp6KzleOo70qd4pYtwdfrnXZMPI8BmPFXWHMBGv?=
 =?us-ascii?Q?PHAdm8M+QWWbRGNVA41GhCz4wIed4E34oow8F/pVoByT4xOROyLgSD61/9d2?=
 =?us-ascii?Q?Ju3v3vEiET1CVq3SUwpS3olV+UWdGD8M/QWDtSRXZCNPq0tlFeAeqeW8322K?=
 =?us-ascii?Q?Ymkq3XBk6JWOt7nzCrtmU+jd5hZFCN+fuoMiVaJNE6dbT/5LjOHnXHjLmENG?=
 =?us-ascii?Q?uB9BJSRSmFWUHuzAH8GoY8lyMBHIv8fjvsTLbtX4zMEpTdKvcm2jtWlRSqlO?=
 =?us-ascii?Q?VhiQJ2StdyREZBeXAHjcmfxAoyi0xb0MA+xKXUMj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c974d93d-8152-4e78-9aac-08dac174ff2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2022 10:35:46.7070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yywi7L0DYkqIE5itA8S9Go9f23/lR5Qcx1H4VK3SdrzBbH73Y1SLvpSFbS9QPvsJkyYi2YGBiwhhSjDJq2EkpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667903756; x=1699439756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9K7hNB0ivb29I9KNh+/PVNhh2kFAlQd63u2/cgrLmS0=;
 b=i/of2lkIYrwg6A4tG2OZ1qZELP4jmX9SDhsCv2lXBI+nMt0W3MqOtX5b
 bbdzAOk+BVQ/1a9urQ7IvigeqdHyyJamji728IZzKfhMlgSPPYmTGDceQ
 nF4COIalgYVBTD/BxylzggvfYGatS7bkRvW2lT89rm3FH2BMij0u7eLJL
 yDw1Wupz749fTsiEprhPEch8CaPP0rbDjjJ7iCZ10i7zE8foZskCDLygi
 ga9WmRJ/IBqiTIkV6hkzTj1c0Qxc9pcn9+kTHuhMKV5zMCJRnZ9pfsz4c
 1QNBMMsgtOkf6nCpk2b/WyzzTmT4ibFG9erxesdOTezxxQehn27INkljB
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i/of2lkI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next,
 v3 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Cc: "Mikailenko, Benjamin" <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Benjamin Mikailenko
> Sent: Thursday, October 27, 2022 8:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Mikailenko, Benjamin <benjamin.mikailenko@intel.com>
> Subject: [Intel-wired-lan] [net-next, v3 1/2] ice: Accumulate HW and Netdev
> statistics over reset
> 
> Resets happen with or without user interaction. For example, incidents such
> as TX hang or a reconfiguration of parameters will result in a reset.
> During reset, hardware and software statistics were set to zero. This created
> an issue for the user where a reset happens in the background, statistics set
> to zero, and the user checks statistics expecting them to be populated.
> 
> To ensure this doesn't happen, keep accumulating stats over reset.
> 
> 1. Remove function calls which reset hardware and netdev statistics.
> 2. Do not rollover statistics in ice_stat_update40 during reset.
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ++
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 30 +++++++++++++++++---
>  4 files changed, 37 insertions(+), 4 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
