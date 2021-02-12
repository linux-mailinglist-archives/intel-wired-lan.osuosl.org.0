Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0306B31A24D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 17:05:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEF1A87610;
	Fri, 12 Feb 2021 16:05:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lBi3mb5I2GRK; Fri, 12 Feb 2021 16:05:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F6A087604;
	Fri, 12 Feb 2021 16:05:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00AC51BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 16:05:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F014C86896
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 16:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CeioPTy8AlL3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 16:05:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C7BE865C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 16:05:38 +0000 (UTC)
IronPort-SDR: 3X9PdZjqRwPGBjzeW6xHzIjAXrmVDUmzH3mJzc0+Nr9FYOOxRMra2vBa8biTLgyrMPtbds7/5o
 fPeSt5expiUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="267278700"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="267278700"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 08:05:23 -0800
IronPort-SDR: LbzfluJm1ta8QNM3FIbjSlcbCC6cyixaro/MkthO5faA9GGJdChf8zV55TlEHmkC1UHVU4Fvpk
 3/X9lx0gMDvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="398040400"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 12 Feb 2021 08:05:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 08:05:22 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 08:05:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 12 Feb 2021 08:05:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 12 Feb 2021 08:05:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XHK3rBzqe1K+rZ5vb/RcPKwoKo1KjaEJ7o6B6q027SxIOrljZWn89mlPcsNRqRZnBmsWjDhlF90TLN6p+Zud3g98oi8m8BWoSndfIp1Yzau4zlPzXNmVF4XrbxLQFshdUTYBC0Nk00ELs3sowl3003nmeP9wPwslo6rNyT2Xl0iNXrvkLvZyj9n4X2m9l7LdtZ/GzuCDExerun0kePfQNMLsf4+DZkkFA/k6nccX6SvUiPzoRvZRX2nlV3eDPNDBn3Es2exzFhkxD9CXbvH8efH0AgdtXbpBrUP4tz3JC0uHuLkTkfAQv5vAiaINEyTPskXipJLYoLYlrqXPtXP76A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ITP47cWEUkRexQNcwDLt3ZIJMCi7wRD8VdUxUtlpMok=;
 b=SiO55yM9CpHr2lQGBMGzWKJcZJCk/Prcd483QxdBo2Qz3ElYlhtz7g08LvsrESm19UbTSkIC5movmmO+WjgkLxYPCEP56bduTY+LMJVY36PubwnXqnnLeZFTHzOXb+Kt2ceezW8c3ZdwFW4DSaJtmWfYKkG6cEqu3BOaa2KUexdr8bZ+rVvz88Jju3QA7mdgv0Tar9Hbz15rEa2TVG/MbK1ko72r/YdPO4E7HIbCWiUWxC64oRCstvTSTJhxELnIFvb9rMA5QJTSpImy/yKnRDP5bjzojwidIfCXoslHjcslvRnr+54awgkIu60SriT+jBlLQhIxuCCeFzpAUmTZww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ITP47cWEUkRexQNcwDLt3ZIJMCi7wRD8VdUxUtlpMok=;
 b=PzFSHbR946WjiTMuK362/P26mwgvL6BeQ77eAYfJKvkQuuHEvPbjYnIYljhpMg/AD3uYTjUWTgB07GsKh2ybTZ/eDdCHENN1h6pyEUJqO6tX0UPwlOOmdMYxg+/Rs///cKQy+4d2/bmkixhP8o/gOlcQ3TMZDV/JCJRSRJ67Oyw=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB4006.namprd11.prod.outlook.com (2603:10b6:a03:188::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.29; Fri, 12 Feb
 2021 16:05:19 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3846.030; Fri, 12 Feb 2021
 16:05:19 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "jdtxs00@gmail.com" <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyCAAP/eIA==
Date: Fri, 12 Feb 2021 16:05:19 +0000
Message-ID: <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b65e02c-151b-43ec-ed33-08d8cf6ffebd
x-ms-traffictypediagnostic: BY5PR11MB4006:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB40066A50D957D85AB2F6AF87EF8B9@BY5PR11MB4006.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HTTlbQSxqj1IwRk2DbGck9ZQ9TPHhwOqe8Bqz72Bfkm08zXjoAIFMXGJ4bxdmyIw/oEtYDwOzxruEfW8mKKFhvWRq+GKLATh6qK+1EXfOG8+TZ1fmuBz4oiTZ/camzTUPVDrBeUODg5yECVii5CLQ1LUIxlaH9qPweEjxNueZp41VJ4KbpZq1fFv6vVr+Qt1/GOf/IEuywFFpNAzRV+m7yn4vU1r6dJ9MUfWgrwJmb3ZUOD6/6p9EQSBME9swJBQlu+agZl3jE25vcXKG0SQz3CBlupSLWZM2MNgk5vIDg18m3EnBM5/fdZ1rlYX+XCjK0gJPKriqP28GDP/NIvwMKfe0SR0ZmfRnjuApXa4bCTJ5SQ2XDkhwI0coWu1212qED7PCtADP3qC6Dx5WoRhH8L5zKtWIJalBvWjXMsxHyE2ssnuQ7KlIxiKa+GyxDg2ZyOYTZOMBAVMSPll4XSnkN08xU/7k9ijFc8uFEQJUvP5CWwBP3RwqALzEqoz7h3C8HX1ih9WfkN2lHU/K0btm3XPLg6JU/371Y7wy1W4z79OmBGLAAzNS4XdaqsvAaDbBMLKmY1L619h2vefhy46rkR8JgI1h5Gz6JvcaBQg+0s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(366004)(136003)(39860400002)(33656002)(55016002)(71200400001)(26005)(2906002)(110136005)(8936002)(9686003)(8676002)(53546011)(6506007)(316002)(186003)(66946007)(66476007)(5660300002)(64756008)(66556008)(83380400001)(478600001)(2940100002)(76116006)(7696005)(966005)(66446008)(52536014)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?RS//8XsBN+RS0CHqBNGaECoLDrAZK+86OuTJEfUCMY3Nq8Kv78KgcVcOcXUX?=
 =?us-ascii?Q?75xMBVUK3t3K3AnqMdM949kvGV2NNDHlCUVH0qI+g8SBJrsubMSY75cd0MBJ?=
 =?us-ascii?Q?qlEVnbTbIGJNyFnJaOneKgtnselaL+NhmURBcBhH5seezNzxwiaIHaBrD4iH?=
 =?us-ascii?Q?98pPx4L19U31LSiMK+foIEcp3fc6CjSDPjFHG3KXleaMt3CbzOovbdGcnm+Z?=
 =?us-ascii?Q?VzZ0RMXYqPqy+Ji0HcT4rXqdNtzEi2DRq8FrHXmp3hJzBoUGXWKGZ7gH/Xm+?=
 =?us-ascii?Q?99IGl7upEeYahJkbLdXFAfKH8YrJjvPGwWV5rYzCJOdUHAcTaytwU8uS0L+A?=
 =?us-ascii?Q?GGRWeZ9VMt72vwo4KfSHZ/TDo5Lrd7hzDTO3Pivw9rJY0ioq5YtCYwb4/TjB?=
 =?us-ascii?Q?CijmDbVh71C2nGVTfQr3zEs8ESyZGa9rqR+JJGp91DM9l3zm+evh68vezd6c?=
 =?us-ascii?Q?PW7I6uRUSwsqMnNxOmAP6Un9nzASr1xeUSbHhBl4DOEIA3bhYoVcQsUaP7Lj?=
 =?us-ascii?Q?7t+eUP9sdW40/bN+OFsgOEOijKIeiyKRhjoIqg6g7mm2UOXOj8UbMGojRsl3?=
 =?us-ascii?Q?ZJ1syX8D805EBAcR/diRI0EzRrrzLhRGg+Uf/+khXr57BrFdIcqJST9iymNF?=
 =?us-ascii?Q?UhtzeTKLKehVZqIrmBByHjg3jVA1ihfL8DR5eYHH7heScBfRtIC/r7AF3ZB+?=
 =?us-ascii?Q?0wNj/QyhG3MabI5JToesfR7ycLJqjSWNGa78bq/mriFKaM+MpWg3BJxNUFnu?=
 =?us-ascii?Q?UxtL8IIMlvaEZwsceELo4s+r56yo4P7lKIVRoeJBwurOuN9yyvEnTxENtkGG?=
 =?us-ascii?Q?zKByS63+QtKvrRQ/LC3RwqhTFnIXAirSmCnxLkaRU1c75tubScnTyjgXik1R?=
 =?us-ascii?Q?lTrvWl0jXQrqcL0OffRMQaxax1cTP3zgAzulVmAkfo1xNKSPF3HxtHsmDCeg?=
 =?us-ascii?Q?S3E9asXOzJTDQwPuePOO6hbHDZeZ3hPU75q/8v02dtDQS3u5NSCs/1nNSJRJ?=
 =?us-ascii?Q?c8Fve+dk5ptz+//K6zsJhQX2L/X7HvjXHi1O3hfRug0NTMz9brQmrw9mJsBr?=
 =?us-ascii?Q?Ch1XN5YOJqEU0cIbfSlTrNd5DYmjPq7k2NEjCqNY9/Az/NdEpF26wYIotjF5?=
 =?us-ascii?Q?84ZRRScRRC938J9TcgoMPZiW9UxGS5wVuOh93IMo9tMGP904smtNwwRQ0zFL?=
 =?us-ascii?Q?hG+Rdk3B18bnYZv0E5+XsWdRKMMXixv+fqYDUMKAMoSiUN/opa8QrFSq1Uxt?=
 =?us-ascii?Q?I4pMGVbqC84M3I/XhhRh7c4pbArbemE6RcZlgJ2Eck0Ke/fW4BMzbFrJVhbc?=
 =?us-ascii?Q?5qQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b65e02c-151b-43ec-ed33-08d8cf6ffebd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2021 16:05:19.3705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lnyLOSCPOs15SAnJI2Diwja46337G3vR9PH0IL4T0pjby25k0eVmBzImNmp5lVJQePaNrsVkaxxyZx0oz+4mKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4006
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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

The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.

Please send the exact repro steps (including commands) including the configuration of bonding.

They're also asking for the full dmesg from the time of boot.

Thanks.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Fujinaka, Todd
Sent: Thursday, February 11, 2021 4:47 PM
To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

Sorry, top-posting guy.

I'm going to put this in our internal bug tracker to make sure it doesn't get lost.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nguyen, Anthony L
Sent: Wednesday, February 10, 2021 6:31 PM
To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> Hello,
> 
> I've encountered a NIC driver bug that leads to null packets being 
> transmitted and arbitrary/OOB memory reads by the iavf driver.
> 
> I'm unfortunately not sure how the issue starts, but it has been 
> happening across many different AMD servers and virtual machines.
> 
> Running a tcpdump (tcpdump -i bond0 -nne ether host
> 00:00:00:00:00:00)
> on bond0 results in these packets being produced at a high rate:
> 
> 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
> 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
> 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
> 144
>         0x0000:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0010:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0020:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0030:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0040:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0050:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0060:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0070:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
>         0x0080:  0000 0000 0000 0000 0000 0000 0000
> 0000  ................
> 
> 
> As you can see, they have a dest/src ether of 00:00:00:00:00:00 and 
> are completely null.  This doesn't happen on every virtual machine, 
> some return absolutely nothing.
> 
> If I filter the tcpdump command to ignore empty packets (all dots), 
> some other interesting items begin to appear:
> 
>         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c 
> .......).....sel
>         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a 
> inuxsystem_u:obj
>         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> 0000  ect_r:bin_t:s0..
> [...]
>         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> 6572  ../usr/lib64/per
>         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> 2f46  l5/vendor_perl/F
>         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d 
> ile/Spec/Unix.pm
> 
> To me, that looks like it's reading data from memory and attempting to 
> send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> 
> If I run that same tcpdump on a different servers exhibiting the null 
> packets, completely different items show up which also appear to be 
> from memory.
> 
> Keeping a tcpdump results in the same items from memory being repeated 
> infinitely with no observable variation.
> 
> So, it seems like the iavf driver is encountering some bug with memory 
> management and ends up transmitting null packets or arbitrary data 
> from memory over bond0.
> 
> How/why did I notice this behavior? The VM's seem to perform worse 
> over the network when this occurs. They usually exhibit small amounts 
> of packet loss, or poor SSH responsiveness. Oddly, I have seen this 
> bug in the past, and it resulted in dmesg on the parent printing 
> Spoofed packet warnings for the i40e driver. Now it does not, yet the 
> null packets still occur.
> 
> I would like to help in any way I can to resolve this in the iavf/i40e 
> driver. I'm happy to provide information from the servers if it's 
> needed.
> 
> For reference, here is the setup on every single AMD server:
> VM:
> CentOS 7.9
> NIC driver: iavf 4.0.1
> Kernel 4.19.163
> 
> KVM parent:
> CentOS 7.9
> NIC driver: i40e 2.12.6
> Kernel: 4.19.163
> 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version: 7.20
> 0x800082b3 1.2585.0
> MOBO: Supermicro H11DSU-iN
> CPU: AMD EPYC 7352
> 
> And here is the dmesg log (grepped for iavf) from a server that has 
> the issue:
> iavf: loading out-of-tree module taints kernel.
> iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - 
> version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair count 
> = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf
> 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled: 
> Queue pair count = 4 iavf 0000:00:05.0: MAC address: 52:54:00:a6:3e:62 
> iavf 0000:00:05.0: GRO is enabled iavf 0000:00:06.0 eth0: NIC Link is 
> Up Speed is 25 Gbps Full Duplex iavf 0000:00:05.0 eth1: NIC Link is Up 
> Speed is 25 Gbps Full Duplex
> 

Hi JD,

I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
