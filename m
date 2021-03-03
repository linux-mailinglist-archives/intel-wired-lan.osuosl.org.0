Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F28ED32B8DF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Mar 2021 16:18:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F22F5483DE;
	Wed,  3 Mar 2021 15:18:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lW4IIDEAWS3I; Wed,  3 Mar 2021 15:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37B83471E6;
	Wed,  3 Mar 2021 15:18:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 657471BF868
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 505F64891C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Ykf5ULfKZ56 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Mar 2021 15:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1529847F82
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Mar 2021 15:18:29 +0000 (UTC)
IronPort-SDR: INvschIhtGTYHjbI2ltQQi1glt1KNje5xbm74bl/Bfx7ywL4+yT3tSLlwCV+tPblvAZjPDdS73
 WNmD/v4P9aTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="187331601"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="187331601"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 07:18:28 -0800
IronPort-SDR: il8L98uWYsBOh2I9GGHgK4neEnZjMKidTEIzgx39KtEVTLs5RJk+WqTdcbPr4jw7ydfNbNBhLJ
 iEKPKc7CLuQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="596412871"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 03 Mar 2021 07:18:28 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 3 Mar 2021 07:18:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 3 Mar 2021 07:18:28 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 3 Mar 2021 07:18:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aN71Zsz5dTG1NL+fCcLB0ZsG0JcUGgDQYf4WNWXtn3SwyA+O8X6/ru/wW45GFeUfiLqBd1afBuXb2EjIdPCPFiEYKoANWKz3WSHj8Poy5AhR3bJeBtGVcZ4Ir6Dq+C4c6davDOTBzMVCxXrExNYuWeF2R+hjxsjbXoeqiiXbcvkM4tkGitY/cMcuURACV05rHAP5HOxC3bSRFqLLtciNW2YTFB6y5/JB/LVZy4XugHMlDyoCca8pYKlBjoXtC1Q2970bbMt8eX56Rb9z8kYtkmAElZO3CfIxRKJbKQKCFj1G/weiyfe1WIxM2frl6QqeujXXwxS6MUIYsz1/GhOz/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEoqpt19zD015Kcv0cqtuXkEEaufkwxNL6+McocMva4=;
 b=K5rBQtJYowhS++R2HNnxzP7fTP2N/xBwOBSCyFll6OfyQQo4QEhu3gzdBXFYif4S3N9dp+sCbwdaIdtln5VA6Kzt1thFiaPR1DoUXnStScvfjPt8NMX8u/PIwse0Wt8Mu6282sDYB/SkFoS9SEm7ne0LooAYvYgLxs3y1K9VTgOc38VxHJJJR0+lZsOsSeNvMNbolkLjkctRADc6+4vPqtVNOOoGQLhX3psJeQ7wLLbyw3KXFzmaq2qSVZxjpNY4HLgVqR4hbKmCm4M1zSkSuSTXBzSt6u1mzgwxT0wJzseRJRqymRfEATnHvN2MVCIPCA4oOn8YM5QYExcEv7J3dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GEoqpt19zD015Kcv0cqtuXkEEaufkwxNL6+McocMva4=;
 b=pcVVkURV3Y8XiDL93iRHGqAaXZiQL4yiwM+KLXgWgSnJW84dST2OwFKymCqTwpy91bvxy6jpvBS7kHXkjs34U5vvvawXIMAmbQM3kTaJN5EAQZEQ/JAkdeGwMjNO2x9bwQZAXwyrvTLbpm/JmzktVBK4OcLFY9e8d3pGrriJgoA=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by SJ0PR11MB4928.namprd11.prod.outlook.com (2603:10b6:a03:2d2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Wed, 3 Mar
 2021 15:18:24 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3890.028; Wed, 3 Mar 2021
 15:18:24 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: JD <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyCAAP/eIIAAK+6AgAAzRrCAFHmBMIAI9wmA
Date: Wed, 3 Mar 2021 15:18:24 +0000
Message-ID: <BYAPR11MB3606FA9E13804D5374EC2D46EF989@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
 <BYAPR11MB360644089232F26D5F0E1BB7EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB36068D4844EB706F9BBD1AFFEF9E9@BYAPR11MB3606.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB36068D4844EB706F9BBD1AFFEF9E9@BYAPR11MB3606.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ac14e331-e4d5-400f-0e7f-08d8de5796db
x-ms-traffictypediagnostic: SJ0PR11MB4928:
x-microsoft-antispam-prvs: <SJ0PR11MB4928B54921C49758C596EAE2EF989@SJ0PR11MB4928.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D8hODAAatep8Td1XIS1AHciSqe58qMMDiGP7HKhOJopQT7p0B4KpD71uqP1kREP5XLOr2mzIafh5i4SNUzss9vCiPSwSbcU82qfNfLNh8NKvN0A1f3N4OCuAiSFVegBZNn58EvdUnQkYMHzzl/7VHV1+kbW8EacrW6WWc8MD6mwe7QCiVnxsmR2sfBi6bumw4ABVgCB5c5jtgqnU8UjFo7suXYj8DMxPiRPpWX/POhQ5gOBbpms4AUcaB9pQ3AlxriCCMO7mdY1iFsqVirlj/0BKkVBLTCagy5uHNgxMgluTtSr0nvx4DuE4dXiE7Q4i0sCBUD2y0bLzxirxch4gTUhhKV5F9xPpQP/RqzqFqxvoqsotKRL6ENLS9ZHy7Fkjkn1HHgndb2tkK3sDHgN1vddW4Xb4HiX/LF3zLLlWeXvhjJ61mLLBqb4edyHDSpifz3qVe6ftnQ9bBu/1WX/ODUlr+6T34UFTQnoDE7SCi+fegAw/Klsn9r9rqav5QHQfzk0RMkUK9yMbt8ahoIyWe1Vu+bEO44kmkQTkxgidSFZf3w0g0+l8nmbVuhnPXBr2g4ooO0HwkQrtVRk9U7h9zGijttqztsClFXMvqsUbspI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(376002)(396003)(136003)(366004)(55016002)(2906002)(30864003)(478600001)(66476007)(26005)(316002)(186003)(66446008)(9686003)(86362001)(66946007)(33656002)(6916009)(83380400001)(5660300002)(66556008)(8936002)(6506007)(966005)(52536014)(53546011)(71200400001)(64756008)(8676002)(7696005)(76116006)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?l1fa5ykAoVLT5DS3YDhZs22l7S6yWtlDfsYgpggKbrg7cP1IhFRkJpbJayse?=
 =?us-ascii?Q?0ZpgkV8VEmU6swB4X/XFFGr2nGkU7if1qQquUoJC0fhkvsfyBlPSYlItl0qh?=
 =?us-ascii?Q?Og56YizrqBCX0ppZuyPu/6tA77G6ju++U2ZmsQq8i/4+Xh8Masm9PGr5mlze?=
 =?us-ascii?Q?Yd0nbPxmdO/KC28LaJWL1NGEsqWe+wSCwt99mLO4TBkg9my1djHxiyXUDoSX?=
 =?us-ascii?Q?ea4LU/ETxuqsu1ZzcdGTjqrrcuAqIq6OdeSH3RRPbjWqm+FN3z8tjY8pEzxP?=
 =?us-ascii?Q?bXaCaRkx5sU2SsY2bsVz1M8bI+rIbzlhyoJB6371tMLXdrmw+izNCBB/kzFB?=
 =?us-ascii?Q?CgRfG74YLz0gh7QwQnBCcC9p4o9J6U3uEwhfOXZATjhfcDh2JquAL58Ativq?=
 =?us-ascii?Q?5KEBwJMftfEL/CFNNlFTLyKT0Rel9gu2r9IFmO16eihfywUrnc0eFkjzbDmy?=
 =?us-ascii?Q?Nv5U+UemsK0Up6CU1rVyBmX0YbkpME4MpqKKfUjt/vD+9MvdpcuUHPfDz0m9?=
 =?us-ascii?Q?6ibDKugOivxbS1gM6/UeZbcPXbxHaXCfpTPHScIwTHs4B4y6oNIO0QYEzHlA?=
 =?us-ascii?Q?Bpgca6Nldou6Pp9R4YwQNVVL3DpuBvoMtfAwmi0KflUbuKpDUsqmg/nsYwYg?=
 =?us-ascii?Q?FiIJ4LaOf2Z97ehZJuhzLK4AMWzbfLoe2ggM3xbsj9Sgmzm/ZVoMI7e55LX+?=
 =?us-ascii?Q?/k5E5Qi2KPjx7Xk0y7ulhvzNF0E6xItmuuC6JipCaNrvVgRTv8XhPZzVr8fc?=
 =?us-ascii?Q?p/d/ajRcok8zGBEq8mocQf2ElvvN7pcXUuC93BGruebnqd7ukzQpX4RGmqxi?=
 =?us-ascii?Q?PEaANYq7hgfSbFTUjBY+U0Mx0Hw/ZBmb8El97G5RQcCyiNJXv8HAFBPRuOi/?=
 =?us-ascii?Q?t0Wv8q2uqpW1pt4xVS5vmK6/uc/M32waCC5TfIdvhS7WKJhbz0CMO/gWWUji?=
 =?us-ascii?Q?fSFj1l/s7ZhC7CaEd7Mv7vI+F3aPRfNJPwRPmEK05PuerjejWHj7P0rhMNvl?=
 =?us-ascii?Q?gSsw0aoBi8j7j8JmBhvrn/WbTfHO4yV4wZdUQ+dzleIiOWRihnW8Fs8w+S/W?=
 =?us-ascii?Q?xg64kxh1YD3cShKaup342QkHr1MqkFbyEhIS/2ZVriyDaYCgI1kwuA3YUqPL?=
 =?us-ascii?Q?yP6ywnjyk4yHu++ILdiOmnhFfpT6kZO7QFMYSzzVcxudX7MoQmLXE+a5jxRk?=
 =?us-ascii?Q?k7aOHFMs5MtSmHxkqZhRprVCDrjaQISC1gk4SHH+Rv9DNtjVCaJH3cjMdes3?=
 =?us-ascii?Q?ZnFR2JQLk9N357mxVTPquYfBE0ufKefCk5W9q86FLLezFPpXCxxj6CJ1bbzP?=
 =?us-ascii?Q?DJw=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac14e331-e4d5-400f-0e7f-08d8de5796db
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2021 15:18:24.5945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X46MGxLgJi+jc/qEcpUu9XvMcoFssdKjmR22gJlEKJ89ih+vlDkq9csE+JdVWkkSYkltdNr66U4mSHSvXmx0aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4928
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I got them to try the kernels you're using and we can't reproduce this. My guess is that it's your kernel config. Can you send those as well?

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Fujinaka, Todd 
Sent: Thursday, February 25, 2021 2:26 PM
To: Fujinaka, Todd <todd.fujinaka@intel.com>; JD <jdtxs00@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: RE: [Intel-wired-lan] iavf null packets and arbitrary memory reads

Just to let you know, we didn't get a reproduction with the latest RHEL 8.3, but that's not what you were using. I'm going to remind our tester of the version numbers you gave us.

In any case, we are looking at this.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Fujinaka, Todd
Sent: Friday, February 12, 2021 1:46 PM
To: JD <jdtxs00@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

There is no common code between iavf and ixgbevf. The speculation is that this is all from the bonding driver, but the repro hasn't started yet.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: JD <jdtxs00@gmail.com>
Sent: Friday, February 12, 2021 10:39 AM
To: Fujinaka, Todd <todd.fujinaka@intel.com>
Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

I have some important details to add to this. It appears that ixgbe/ixgbevf are also affected. I have reviewed some older Intel based servers and some are showing the behavior as well.

This is a non-AMD server showing the behavior on a different NIC:
OS: CentOS 7.8
Kernel: 4.19.107
NIC: Intel Corporation Ethernet Controller 10G X550T
Driver: ixgbe 5.1.0-k
Vendor P/N: AOC-MTG-i2TM
Firmware-version: 0x80000aee, 1.1876.0
CPU: Intel(R) Xeon(R) Silver 4214 CPU
MOBO: Supermicro X11DPT-PS

The VM on the Intel box above is using kernel 4.19.163 with ixgbevf 4.1.0-k

This is a server with only 1 NIC (though bonding is still setup with only a single interface for simplification between builds), so I would assume that bonding isn't relevant to the bug. I will include the bonding configuration for the AMD servers below anyway in case you need it.

For repro: I don't know how the issue begins or how to reproduce it on demand, it happens during normal VM use. I will describe our environment and go over various settings.

Virtualization type: qemu-kvm
Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64

OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bonding: Bonded and unbonded are affected. However, on bonded hosts, these options are used:
GUEST: BONDING_OPTS="mode=2 miimon=100 xmit_hash_policy=1"
HOST: BONDING_OPTS="mode=4 miimon=100 xmit_hash_policy=layer3+4"

Bonding is setup in both the guest and host using the configuration above. 2 VF's are attached to the KVM guest for this.

Here is the QEMU process on the AMD based server:
qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
/usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S -object secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-27-VMNAME-REDACTED/master-key.aes
-machine pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
-cpu EPYC-IBPB,x2apic=on,tsc-deadline=on,hypervisor=on,tsc_adjust=on,clwb=on,umip=on,spec-ctrl=on,stibp=on,ssbd=on,cmp_legacy=on,perfctr_core=on,monitor=off
-m 8192 -realtime mlock=off -smp 4,sockets=4,cores=1,threads=1 -uuid
6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config -nodefaults -chardev socket,id=charmonitor,fd=55,server,nowait -mon chardev=charmonitor,id=monitor,mode=control -rtc base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
PIIX4_PM.disable_s4=1 -boot strict=on -device
ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,addr=0x2
-device ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
-device ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
-device ahci,id=sata0,bus=pci.0,addr=0x3 -drive file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=drive-sata0-0-0,cache=none,discard=unmap
-device ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,write-cache=on
-chardev pty,id=charserial0 -device
isa-serial,chardev=charserial0,id=serial0 -device
vfio-pci,host=81:03.5,id=hostdev0,bus=pci.0,addr=0x5 -device
vfio-pci,host=81:0b.5,id=hostdev1,bus=pci.0,addr=0x6 -device
virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny
-msg timestamp=on


Here is the QEMU process on the Intel based server:
qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
/usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S -object secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-21-VMNAME-REDACTED/master-key.aes
-machine pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
-cpu Skylake-Server-IBRS,ss=on,hypervisor=on,tsc_adjust=on,clflushopt=on,umip=on,pku=on,avx512vnni=on,md-clear=on,stibp=on,ssbd=on,xsaves=on,hle=off,rtm=off
-m 8192 -realtime mlock=off -smp 4,sockets=4,cores=1,threads=1 -uuid
6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config -nodefaults -chardev socket,id=charmonitor,fd=31,server,nowait -mon chardev=charmonitor,id=monitor,mode=control -rtc base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
PIIX4_PM.disable_s4=1 -boot strict=on -device
ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,addr=0x2
-device ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
-device ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
-device ahci,id=sata0,bus=pci.0,addr=0x3 -drive file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=drive-sata0-0-0,cache=none,discard=unmap
-device ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,write-cache=on
-chardev pty,id=charserial0 -device
isa-serial,chardev=charserial0,id=serial0 -device
vfio-pci,host=18:11.0,id=hostdev0,bus=pci.0,addr=0x5 -device
virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=deny
-msg timestamp=on


Lastly, I have attached some files:
- The dmesg log from the VM with ixgbevf
- The dmesg log from the VM with iavf
- A time series graph for the AMD based server with iavf illustrating when the issue began. On the AMD-based server, spikes with dropped packets are normal, but a constant flow isn't. As you can see, a constant flow of dropped packets begins shortly after 2/06 @ 20:20 UTC.
- A time series graph for the Intel based server with ixgbevf illustrating when the issue began. On the Intel based server, there's no drops whatsoever, and as soon as the null packet bug gets triggered, they spike and remain constant after 2/10 @ 9:00 UTC.

I have analytics for almost everything network related (courtesy of Prometheus/node_exporter), so if you want insight on any other keys/values from the kernel or networking stack, please let me know and I'm happy to provide it.

My thoughts currently: If this issue affects both iavf/ixgbevf, how much common code/logic is used between those drivers? I think it should help narrow things down a little more since it doesn't seem to be specific to a NIC or to iavf in particular.

Thank you.

On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.
>
> Please send the exact repro steps (including commands) including the configuration of bonding.
>
> They're also asking for the full dmesg from the time of boot.
>
> Thanks.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Fujinaka, Todd
> Sent: Thursday, February 11, 2021 4:47 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> Sorry, top-posting guy.
>
> I'm going to put this in our internal bug tracker to make sure it doesn't get lost.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Nguyen, Anthony L
> Sent: Wednesday, February 10, 2021 6:31 PM
> To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > Hello,
> >
> > I've encountered a NIC driver bug that leads to null packets being 
> > transmitted and arbitrary/OOB memory reads by the iavf driver.
> >
> > I'm unfortunately not sure how the issue starts, but it has been 
> > happening across many different AMD servers and virtual machines.
> >
> > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > 00:00:00:00:00:00)
> > on bond0 results in these packets being produced at a high rate:
> >
> > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
> > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
> > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
> > 144
> >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > 0000  ................
> >
> >
> > As you can see, they have a dest/src ether of 00:00:00:00:00:00 and 
> > are completely null.  This doesn't happen on every virtual machine, 
> > some return absolutely nothing.
> >
> > If I filter the tcpdump command to ignore empty packets (all dots), 
> > some other interesting items begin to appear:
> >
> >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c 
> > .......).....sel
> >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a 
> > inuxsystem_u:obj
> >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > 0000  ect_r:bin_t:s0..
> > [...]
> >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > 6572  ../usr/lib64/per
> >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > 2f46  l5/vendor_perl/F
> >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d 
> > ile/Spec/Unix.pm
> >
> > To me, that looks like it's reading data from memory and attempting 
> > to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> >
> > If I run that same tcpdump on a different servers exhibiting the 
> > null packets, completely different items show up which also appear 
> > to be from memory.
> >
> > Keeping a tcpdump results in the same items from memory being 
> > repeated infinitely with no observable variation.
> >
> > So, it seems like the iavf driver is encountering some bug with 
> > memory management and ends up transmitting null packets or arbitrary 
> > data from memory over bond0.
> >
> > How/why did I notice this behavior? The VM's seem to perform worse 
> > over the network when this occurs. They usually exhibit small 
> > amounts of packet loss, or poor SSH responsiveness. Oddly, I have 
> > seen this bug in the past, and it resulted in dmesg on the parent 
> > printing Spoofed packet warnings for the i40e driver. Now it does 
> > not, yet the null packets still occur.
> >
> > I would like to help in any way I can to resolve this in the 
> > iavf/i40e driver. I'm happy to provide information from the servers 
> > if it's needed.
> >
> > For reference, here is the setup on every single AMD server:
> > VM:
> > CentOS 7.9
> > NIC driver: iavf 4.0.1
> > Kernel 4.19.163
> >
> > KVM parent:
> > CentOS 7.9
> > NIC driver: i40e 2.12.6
> > Kernel: 4.19.163
> > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version: 
> > 7.20
> > 0x800082b3 1.2585.0
> > MOBO: Supermicro H11DSU-iN
> > CPU: AMD EPYC 7352
> >
> > And here is the dmesg log (grepped for iavf) from a server that has 
> > the issue:
> > iavf: loading out-of-tree module taints kernel.
> > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - 
> > version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair 
> > count = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf
> > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled:
> > Queue pair count = 4 iavf 0000:00:05.0: MAC address: 
> > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf
> > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex iavf
> > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> >
>
> Hi JD,
>
> I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.
>
> Thanks,
> Tony
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
