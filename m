Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FAF3348E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 21:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C3B605F7;
	Wed, 10 Mar 2021 20:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqrHQA3Lbgan; Wed, 10 Mar 2021 20:32:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C6F560609;
	Wed, 10 Mar 2021 20:32:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C6EA1BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 20:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37056605F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 20:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w121W8g00gUH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Mar 2021 20:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D6EAD605F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Mar 2021 20:31:54 +0000 (UTC)
IronPort-SDR: 5zJAMw1xRx5Y4WUOJuiDwjwF95plm4RGR/5KWKIRQX1pmPgtgyUhaxo0CayZ5Aw13llieU9Aak
 DsZFViFzk6LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="185203296"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="185203296"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 12:31:53 -0800
IronPort-SDR: nD3asc8WcjEdUv6GvlN0ocXRf2V/a+J1RnomHUMaHmAV6wyBu33acBGP+cgfXmy/1VjqPSdx0n
 OiWumftVXAlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="409234583"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 10 Mar 2021 12:31:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Mar 2021 12:31:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Mar 2021 12:31:52 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Mar 2021 12:31:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cg+NCuGAEe3kx4Wqa8gvzyQSrRLkQhusdPhMReDHu0owgJpfXdXhYh4WIQkJ+odKF9PkB/EZVTutqERQf20WuOD7CEfwPii6X+8tyDcIdlgBU7YV945LKodfKdvtQlfAJJe2XARxSkoQNKAKYNrh8iPQdFYRejDVvWVcyNFlJB/cNQZKRQfsTR/II+FJP9ltBah2F50Qm+u9pd+TZRlDzEI5mRumvNI98m+CBcwCoQLl2CRFxjzpMUu9/5NselFpfCAxdsEHXsqpA1ys6bkQawdqIXfjZOAiHNVJZOPumExA9ZHKyQG5PAmF68sj8iBUBED+QqEtuEjPAtDv5rZdOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUbNuKxHsORPuwPE7X6dex1FB2nGg6jph0IhTrG/GL0=;
 b=Ws4DN7WR73uWSvC307xefcBctUxuas8S/e1Ih8hOtx28/avwkLHiqRQZnWswB1DrEunsEOBSD6I0nzT9nXOmlQ4MhbS6GGSIi7RvNsiXSLcYNf+lXpMHZORzVG0dctiT6HGdRaDT7F/cPhfXHDYJsG1OJuM8r/JEbsqJjCCOEcVCbWai4CsBpSYtAkVxuqsPeGdeHWg8uR3dK9kom8AenRIlmymeeGFivwjMZRJaBAdmHjPjF9JZP86BfGPVE5kWENp8/na1wQVJ/ZcuGYaMB9qmzny2Frs6g6Y1ujAFF32IEc6E+jb4k/yDaMeMqTyCjx16DidH2K+moUiywa2klQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uUbNuKxHsORPuwPE7X6dex1FB2nGg6jph0IhTrG/GL0=;
 b=U5MNlVg4Y8N9jndqom+6YdMEIKUk6oll4olNV5D6hTjem9Me2UAS+tVIUg5ekSbdNa16vrxieMMF8dfWxoeU3y80jw903WM27KuKVm4+JSmovb7eRr1jJ835z46tv+tf5Mzg1a74EnMY+s+hzjohhY8rDe56nCo6oaFOpv34Xdg=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BYAPR11MB3718.namprd11.prod.outlook.com (2603:10b6:a03:fd::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Wed, 10 Mar
 2021 20:31:47 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3912.030; Wed, 10 Mar 2021
 20:31:47 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: JD <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyCAAP/eIIAAK+6AgAAzRrCAFHmBMIAI9wmAgAAtzgCAAy0l8IAEjvmAgANtomA=
Date: Wed, 10 Mar 2021 20:31:47 +0000
Message-ID: <BYAPR11MB36069D3FAE0796AAB473791DEF919@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
 <BYAPR11MB360644089232F26D5F0E1BB7EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB36068D4844EB706F9BBD1AFFEF9E9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606FA9E13804D5374EC2D46EF989@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+Pi9r_LmMhkJmhs9n0mWvO0XPWAhzZdshXKQhJpEMMhXFQ@mail.gmail.com>
 <BYAPR11MB36065DF92056873D70FC7638EF969@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PhzHhyp8sqqZLRBA2Gu0ETavOmTuJ77eruaKUA_SQAcPg@mail.gmail.com>
In-Reply-To: <CAMnf+PhzHhyp8sqqZLRBA2Gu0ETavOmTuJ77eruaKUA_SQAcPg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb5a5e1c-cb81-40b3-2084-08d8e40386fc
x-ms-traffictypediagnostic: BYAPR11MB3718:
x-microsoft-antispam-prvs: <BYAPR11MB3718451A0D4AFC70B82A0824EF919@BYAPR11MB3718.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u+LrQj/w9fulhd/r55FYiwbJYtcw205k0ZwKrxeKSeFeYHDM8QLl7wSPeOEOhHjVzmfTdcS+irnoxgAytpsEfD4Jd+GtVQx3jbRp6SXdSHw5lACI3zidX1MaEsQ+/bmwFTClflBGODF2UEX/PhEPVVWEN7bfhBUXODB5NlDyaK+JkH/69NFK5420SqOuHrFV3vMIVbhqvQxNDl528PtsmSlYSNqE18mDugmujSuGCer0iK/Hz2TipHE6Nipra/ODor2Svms11kUVxindzw3ZwYf2cdf4og1MtX0L1zrHL6RvjSLWe52dJbw2t9TP869aI0ShAhXzv+3Y1T9LFD4NeB42ZfDZBzpHnQTgTMGHMKflhtqU8xgHUOypvJSiEE/fFeRXaSlBAqLX4mAaS2kBUGk+Z9WRP60nhQBdbALxD841jKrzPGygwq1G35s55pj/b9sDHRpC5Dy3S3mJHV51OcRwQMhjgXLEQ9Bo9DhuInaakhJKYAHK4KQ67VLgL8hiy5T97rbbKKd8mNhRwEps3lH9jLOCNjgpJGmFxwT/UnB34v5MRzu4qRJ0O3kzm7gMC6UbceCF+Ds6QfU7Vr7PdRdDcU33cZuC3vKbru6h5Lk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(376002)(136003)(346002)(366004)(71200400001)(9686003)(53546011)(966005)(55016002)(8676002)(6916009)(5660300002)(76116006)(478600001)(30864003)(7696005)(8936002)(64756008)(33656002)(66476007)(86362001)(66946007)(2906002)(66556008)(26005)(52536014)(186003)(4326008)(316002)(83380400001)(6506007)(66446008)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?KzZRUHRaYm9NL3I3MTJKbXErRXJmaEcxMGEzci9FZ2tOZzlYc3p1UWVwMFVE?=
 =?utf-8?B?VVI1SXBEZEljS09XTTd2a0VFMXlhOUJVU3lIamlONjdtTDZvdFBUUzNLK1Jt?=
 =?utf-8?B?NVFLZUJMNWlKdkVrYjNXSFFHSVlRdUN5ZWpUZnUrT3pVN3dpNHB6WlFpMFhJ?=
 =?utf-8?B?UldhbzNWQXIveDRjMXFhSi9ickNvYzVlclpwWlMyL3pVeTJNUklla1JNTThD?=
 =?utf-8?B?WjhOYVhxWFpaUFJYWVJ3WFQ2aHE5NGxlL3d5SW1sU0F5UXRVV1NMWXdwdUhX?=
 =?utf-8?B?WUtiWEpUTVJKZng1SFpkRTMwd2dTQnUyUGtJcVdYZUxsUFpQR1JpWDFpV21w?=
 =?utf-8?B?VFBDR1ZSUkJGYWtlSmY2ZUI1eS95ZXZXYWxCNEd3eEFlUFUrYklkRHF6SEhq?=
 =?utf-8?B?aEppYXE5Wml6MUJibHVNSzhHSVh0ZmYvRmZHQU80a2p1L29XelphV2RYVHZH?=
 =?utf-8?B?Nk01UFVJRnJPemdkUUx1bWd4Uys3N2VVRjVpQjd6bWxDTXB5cE9iQ1NRQm9z?=
 =?utf-8?B?L2tKaE9RYXhtV3k4c2xiQmdNdzVEc3ArWG80cnB3eVl0WHk4NHVXMFFnbWhn?=
 =?utf-8?B?emZ4VFpCMmQrYVR0OFl3RjRYV3pkQ2ZqeVdTS3gySExRQkN6NGlFdkZHNGF4?=
 =?utf-8?B?a1d4dThNejhFSldtdGRrUG9sRFlmR1FTV1QzdXhXNVJTN3RkVm5pWkZqRUJ2?=
 =?utf-8?B?dFJEeHl2aEpjR29DQWt4aEhLOHk3Q3RtK3djZUovcTVwdGE1VTJWTmtiOXVF?=
 =?utf-8?B?WjlDUmZSd3JDZ0dqUVV5NEQreW5sUVpqNDRrbW1aWFliL1BoaElFYUIyamRZ?=
 =?utf-8?B?MGxtNlhRT2lpMFNucEpjYi8zaG1SUGliZmVnaDdLQVZkUSs3RHYwb05Wc3dC?=
 =?utf-8?B?dWVyR2tMb1dJdGJzS1VtZnhFSitiQWNPb01tSHNPY3hidTROQUM3elJhb3lx?=
 =?utf-8?B?M24wbXFDaW10Z1VsTFZvZE1UMjJIVTQrNVUvQkp4Wjc1akFSRXp3Tk16NURu?=
 =?utf-8?B?TklDQ043SzRXVFJVNHpaQ2tPK01ZS2ZlWW41K3ZBZjJNdUFBdHJqNk40UmlQ?=
 =?utf-8?B?NGZDMlpuUEhOMVVuMndjVGZLWHZEUzBVdGpITXJDdTJJaXh2NUh1OXNBcDYx?=
 =?utf-8?B?SzlGM3FLV2QwbzV4R3BZQjU1ZTlVS25zenRhTzgrTWtFVjlCQ2dLaG1paWND?=
 =?utf-8?B?MDMrWVIrcVN6WENGUTdtQkg0S0VZNEZITjM0T1lvdmhUaURva1c0ZXZDWElO?=
 =?utf-8?B?eVlwZjZISEZ5V3BwQjc4OHFZSlg5VVZjL1d3UWlDRTBNa21YSGgrSGUzOTMy?=
 =?utf-8?B?WmhOblZYTlY3cEJUMHpFZnNmbGFIdm9kYllSZ1hBYzJBbUdabTJHU0FBdys5?=
 =?utf-8?B?c2xhTkxMZUl2d1gyYWd3SDhBU25UNjJRV2ZaRVhqUDVGU0V0Rlp3TU85S1Zz?=
 =?utf-8?B?SEVKTXoxTXR0a1JVVlRQa2VRakx1aFk4dFVpbGtrWkhuWkdiZGpQbGlIbDVu?=
 =?utf-8?B?ZG96OS93RVlzL2lJcTlMZkQwSjRMVjZtelc2UjRxalIwUHFVQXhVdlcvWEhx?=
 =?utf-8?B?NGNCQ3pHOFpTSkJsVDRrZVk1ZkRJam43ZlZuQktmNFRNTUJMKzh3NHVoRXdP?=
 =?utf-8?B?amMxcnFYcmdBRnE4QjFwcWFOU2RxbTRDYWkzZXNRLzVBbHRlY0ZwdkZuTzc4?=
 =?utf-8?B?QnpYY1BpZUQ1eFdGc1FHR243ZSt2eHg3YS9YL2lFanptOGhDenRVUTRhMmRo?=
 =?utf-8?Q?EWAVNOYNt25lxaFqPA=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb5a5e1c-cb81-40b3-2084-08d8e40386fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2021 20:31:47.2401 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xKlpPZZSduEUgWLJzGWcBfscjDsom1f2Q4/At1+jQIV0Q1tCg2aqiLtFgAKg5AAfV53Qzu32NHNeMh9OYjqLLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3718
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

One of the senior software guys has been thinking about your issue for a while and he just came up with some more ideas (as well as the previous ideas):

Hi JD,
I have another data point I'd like to note for you. In order for SR-IOV to work right and be safe, you need to have IOMMU enabled on your platforms at boot.

Usually this is done at boot with kernel options "iommu=pt intel_iommu=on" at least for Intel platforms. I see these seem to be missing from your dmesg logs.

I also found mention at redhat's site of "locked" parameter for libvirt, and you might want to try that, but I can't tell from my research what the use of PCI-passthrough implies for qemu/kvm/libvirt in it's configuration.

some good reading:
https://software.intel.com/content/www/us/en/develop/articles/configure-sr-iov-network-virtual-functions-in-linux-kvm.html
https://libvirt.org/formatdomain.html (see "locked" and "hard_limit") https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html-single/virtualization_tuning_and_optimization_guide/index#chap-Virtualization_Tuning_Optimization_Guide-Memory

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: JD <jdtxs00@gmail.com> 
Sent: Monday, March 8, 2021 8:08 AM
To: Fujinaka, Todd <todd.fujinaka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

Hello Todd,

That is a great lead, I will chase that down and try various memory situations myself.

If you come up with anything on your end from the testing -- let me know. I will do the same.

Thank you very much, I appreciate your help!

On Fri, Mar 5, 2021 at 12:41 PM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> OK, I don't know if we're going to be able to reproduce this in-house, though we have one new test to try.
>
> Also, seeing this on multiple drivers seems odd.
>
> I did talk to a senior engineer and he suspects that qemu might be getting swapped out. Transmitting packets with all zeros points toward a problem with DMA mapping or memory pinning. We are depending on qemu memory to be permanently pinned in the host for SR-IOV to work.
>
> You may need to start qemu with other options to prevent it from being swapped out. I can't suggest any because I'm not that familiar with qemu. Maybe there's a qemu forum where you could ask this?
>
> I think our final test is to 1) reduce system memory in the host via kernel command line, then 2) launch with his command, and 3) run some memory hog benchmark/stress test on the host that starts causing lots of swapping.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: JD <jdtxs00@gmail.com>
> Sent: Wednesday, March 3, 2021 10:01 AM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> Hello Todd,
>
> I have attached the kernel config for the virtual machine.  I don't 
> know if it helps you at all, but the machines primarily run VPN 
> tunnels (IPsec/OpenVPN)
>
> I still don't know what triggers the bug exactly. A VM can go a full month passing traffic normally then start transmitting those null packets for no clear or obvious reason.
>
> If you would like the output of any command on a VM that is currently experiencing the bug, let me know. I am happy to provide anything that helps.
>
> Thank you.
>
> On Wed, Mar 3, 2021 at 9:18 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> >
> > I got them to try the kernels you're using and we can't reproduce this. My guess is that it's your kernel config. Can you send those as well?
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Fujinaka, Todd
> > Sent: Thursday, February 25, 2021 2:26 PM
> > To: Fujinaka, Todd <todd.fujinaka@intel.com>; JD <jdtxs00@gmail.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: RE: [Intel-wired-lan] iavf null packets and arbitrary 
> > memory reads
> >
> > Just to let you know, we didn't get a reproduction with the latest RHEL 8.3, but that's not what you were using. I'm going to remind our tester of the version numbers you gave us.
> >
> > In any case, we are looking at this.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> > Of Fujinaka, Todd
> > Sent: Friday, February 12, 2021 1:46 PM
> > To: JD <jdtxs00@gmail.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > memory reads
> >
> > There is no common code between iavf and ixgbevf. The speculation is that this is all from the bonding driver, but the repro hasn't started yet.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: JD <jdtxs00@gmail.com>
> > Sent: Friday, February 12, 2021 10:39 AM
> > To: Fujinaka, Todd <todd.fujinaka@intel.com>
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> > intel-wired-lan@lists.osuosl.org
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > memory reads
> >
> > I have some important details to add to this. It appears that ixgbe/ixgbevf are also affected. I have reviewed some older Intel based servers and some are showing the behavior as well.
> >
> > This is a non-AMD server showing the behavior on a different NIC:
> > OS: CentOS 7.8
> > Kernel: 4.19.107
> > NIC: Intel Corporation Ethernet Controller 10G X550T
> > Driver: ixgbe 5.1.0-k
> > Vendor P/N: AOC-MTG-i2TM
> > Firmware-version: 0x80000aee, 1.1876.0
> > CPU: Intel(R) Xeon(R) Silver 4214 CPU
> > MOBO: Supermicro X11DPT-PS
> >
> > The VM on the Intel box above is using kernel 4.19.163 with ixgbevf 
> > 4.1.0-k
> >
> > This is a server with only 1 NIC (though bonding is still setup with only a single interface for simplification between builds), so I would assume that bonding isn't relevant to the bug. I will include the bonding configuration for the AMD servers below anyway in case you need it.
> >
> > For repro: I don't know how the issue begins or how to reproduce it on demand, it happens during normal VM use. I will describe our environment and go over various settings.
> >
> > Virtualization type: qemu-kvm
> > Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
> > QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64
> >
> > OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bonding: Bonded and unbonded are affected. However, on bonded hosts, these options are used:
> > GUEST: BONDING_OPTS="mode=2 miimon=100 xmit_hash_policy=1"
> > HOST: BONDING_OPTS="mode=4 miimon=100 xmit_hash_policy=layer3+4"
> >
> > Bonding is setup in both the guest and host using the configuration above. 2 VF's are attached to the KVM guest for this.
> >
> > Here is the QEMU process on the AMD based server:
> > qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
> > /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on 
> > -S -object 
> > secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-27
> > -V MNAME-REDACTED/master-key.aes -machine 
> > pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> > -cpu
> > EPYC-IBPB,x2apic=on,tsc-deadline=on,hypervisor=on,tsc_adjust=on,clwb
> > =o 
> > n,umip=on,spec-ctrl=on,stibp=on,ssbd=on,cmp_legacy=on,perfctr_core=o
> > n, monitor=off -m 8192 -realtime mlock=off -smp
> > 4,sockets=4,cores=1,threads=1 -uuid
> > 6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config 
> > -nodefaults -chardev socket,id=charmonitor,fd=55,server,nowait -mon 
> > chardev=charmonitor,id=monitor,mode=control -rtc 
> > base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay 
> > -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> > PIIX4_PM.disable_s4=1 -boot strict=on -device
> > ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device 
> > ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=o
> > n,
> > addr=0x2 -device
> > ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> > -device
> > ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> > -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive 
> > file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id
> > =d rive-sata0-0-0,cache=none,discard=unmap
> > -device
> > ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,wr
> > it
> > e-cache=on
> > -chardev pty,id=charserial0 -device
> > isa-serial,chardev=charserial0,id=serial0 -device
> > vfio-pci,host=81:03.5,id=hostdev0,bus=pci.0,addr=0x5 -device
> > vfio-pci,host=81:0b.5,id=hostdev1,bus=pci.0,addr=0x6 -device
> > virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox 
> > on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=d
> > en
> > y
> > -msg timestamp=on
> >
> >
> > Here is the QEMU process on the Intel based server:
> > qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
> > /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on 
> > -S -object 
> > secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-21
> > -V MNAME-REDACTED/master-key.aes -machine 
> > pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> > -cpu
> > Skylake-Server-IBRS,ss=on,hypervisor=on,tsc_adjust=on,clflushopt=on,
> > um 
> > ip=on,pku=on,avx512vnni=on,md-clear=on,stibp=on,ssbd=on,xsaves=on,hl
> > e= off,rtm=off -m 8192 -realtime mlock=off -smp
> > 4,sockets=4,cores=1,threads=1 -uuid
> > 6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config 
> > -nodefaults -chardev socket,id=charmonitor,fd=31,server,nowait -mon 
> > chardev=charmonitor,id=monitor,mode=control -rtc 
> > base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay 
> > -no-hpet -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> > PIIX4_PM.disable_s4=1 -boot strict=on -device
> > ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device 
> > ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=o
> > n,
> > addr=0x2 -device
> > ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> > -device
> > ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> > -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive 
> > file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id
> > =d rive-sata0-0-0,cache=none,discard=unmap
> > -device
> > ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,wr
> > it
> > e-cache=on
> > -chardev pty,id=charserial0 -device
> > isa-serial,chardev=charserial0,id=serial0 -device
> > vfio-pci,host=18:11.0,id=hostdev0,bus=pci.0,addr=0x5 -device
> > virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox 
> > on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=d
> > en
> > y
> > -msg timestamp=on
> >
> >
> > Lastly, I have attached some files:
> > - The dmesg log from the VM with ixgbevf
> > - The dmesg log from the VM with iavf
> > - A time series graph for the AMD based server with iavf illustrating when the issue began. On the AMD-based server, spikes with dropped packets are normal, but a constant flow isn't. As you can see, a constant flow of dropped packets begins shortly after 2/06 @ 20:20 UTC.
> > - A time series graph for the Intel based server with ixgbevf illustrating when the issue began. On the Intel based server, there's no drops whatsoever, and as soon as the null packet bug gets triggered, they spike and remain constant after 2/10 @ 9:00 UTC.
> >
> > I have analytics for almost everything network related (courtesy of Prometheus/node_exporter), so if you want insight on any other keys/values from the kernel or networking stack, please let me know and I'm happy to provide it.
> >
> > My thoughts currently: If this issue affects both iavf/ixgbevf, how much common code/logic is used between those drivers? I think it should help narrow things down a little more since it doesn't seem to be specific to a NIC or to iavf in particular.
> >
> > Thank you.
> >
> > On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> > >
> > > The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.
> > >
> > > Please send the exact repro steps (including commands) including the configuration of bonding.
> > >
> > > They're also asking for the full dmesg from the time of boot.
> > >
> > > Thanks.
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On 
> > > Behalf Of Fujinaka, Todd
> > > Sent: Thursday, February 11, 2021 4:47 PM
> > > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> > > intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > > memory reads
> > >
> > > Sorry, top-posting guy.
> > >
> > > I'm going to put this in our internal bug tracker to make sure it doesn't get lost.
> > >
> > > Todd Fujinaka
> > > Software Application Engineer
> > > Data Center Group
> > > Intel Corporation
> > > todd.fujinaka@intel.com
> > >
> > > -----Original Message-----
> > > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On 
> > > Behalf Of Nguyen, Anthony L
> > > Sent: Wednesday, February 10, 2021 6:31 PM
> > > To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > > memory reads
> > >
> > > On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > > > Hello,
> > > >
> > > > I've encountered a NIC driver bug that leads to null packets 
> > > > being transmitted and arbitrary/OOB memory reads by the iavf driver.
> > > >
> > > > I'm unfortunately not sure how the issue starts, but it has been 
> > > > happening across many different AMD servers and virtual machines.
> > > >
> > > > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > > > 00:00:00:00:00:00)
> > > > on bond0 results in these packets being produced at a high rate:
> > > >
> > > > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, 
> > > > length
> > > > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, 
> > > > ctrl
> > > > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], 
> > > > length
> > > > 144
> > > >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > > > 0000  ................
> > > >
> > > >
> > > > As you can see, they have a dest/src ether of 00:00:00:00:00:00 
> > > > and are completely null.  This doesn't happen on every virtual 
> > > > machine, some return absolutely nothing.
> > > >
> > > > If I filter the tcpdump command to ignore empty packets (all 
> > > > dots), some other interesting items begin to appear:
> > > >
> > > >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c 
> > > > .......).....sel
> > > >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a 
> > > > inuxsystem_u:obj
> > > >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > > > 0000  ect_r:bin_t:s0..
> > > > [...]
> > > >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > > > 6572  ../usr/lib64/per
> > > >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > > > 2f46  l5/vendor_perl/F
> > > >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d 
> > > > ile/Spec/Unix.pm
> > > >
> > > > To me, that looks like it's reading data from memory and 
> > > > attempting to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> > > >
> > > > If I run that same tcpdump on a different servers exhibiting the 
> > > > null packets, completely different items show up which also 
> > > > appear to be from memory.
> > > >
> > > > Keeping a tcpdump results in the same items from memory being 
> > > > repeated infinitely with no observable variation.
> > > >
> > > > So, it seems like the iavf driver is encountering some bug with 
> > > > memory management and ends up transmitting null packets or 
> > > > arbitrary data from memory over bond0.
> > > >
> > > > How/why did I notice this behavior? The VM's seem to perform 
> > > > worse over the network when this occurs. They usually exhibit 
> > > > small amounts of packet loss, or poor SSH responsiveness. Oddly, 
> > > > I have seen this bug in the past, and it resulted in dmesg on 
> > > > the parent printing Spoofed packet warnings for the i40e driver. 
> > > > Now it does not, yet the null packets still occur.
> > > >
> > > > I would like to help in any way I can to resolve this in the 
> > > > iavf/i40e driver. I'm happy to provide information from the 
> > > > servers if it's needed.
> > > >
> > > > For reference, here is the setup on every single AMD server:
> > > > VM:
> > > > CentOS 7.9
> > > > NIC driver: iavf 4.0.1
> > > > Kernel 4.19.163
> > > >
> > > > KVM parent:
> > > > CentOS 7.9
> > > > NIC driver: i40e 2.12.6
> > > > Kernel: 4.19.163
> > > > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > > > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version:
> > > > 7.20
> > > > 0x800082b3 1.2585.0
> > > > MOBO: Supermicro H11DSU-iN
> > > > CPU: AMD EPYC 7352
> > > >
> > > > And here is the dmesg log (grepped for iavf) from a server that 
> > > > has the issue:
> > > > iavf: loading out-of-tree module taints kernel.
> > > > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver 
> > > > - version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue 
> > > > pair count = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 
> > > > iavf
> > > > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled:
> > > > Queue pair count = 4 iavf 0000:00:05.0: MAC address:
> > > > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf
> > > > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex 
> > > > iavf
> > > > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> > > >
> > >
> > > Hi JD,
> > >
> > > I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.
> > >
> > > Thanks,
> > > Tony
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
