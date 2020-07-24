Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BDA22D277
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jul 2020 01:53:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7099F88AC5;
	Fri, 24 Jul 2020 23:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsaH4Kp6vnMp; Fri, 24 Jul 2020 23:53:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F151088ADB;
	Fri, 24 Jul 2020 23:53:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 188CE1BF365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1134E8853D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TeB0NIe7F1TN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 23:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64ED8884E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 23:53:38 +0000 (UTC)
IronPort-SDR: PxfxRdNKUpGgyEnbHKO3Lg4LJ5Pno4wq1Wp3/qmhP3EnlzFYUq+xrpsIhPHLYjyNpGnFtXMoBK
 vlq4CZPLUbcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="152073354"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="152073354"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 16:53:37 -0700
IronPort-SDR: 7nYO04ZCHanvgkt9rTbvZkX5VKhQmiU50i3hcLdms2MyQ/y2TTek4ycn6OQuTnHOb7eT5p0uzr
 OOHHlUdQKfUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="327459603"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2020 16:53:37 -0700
Received: from fmsmsx104.amr.corp.intel.com (10.18.124.202) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jul 2020 16:53:36 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 Jul 2020 16:53:33 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.58) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 24 Jul 2020 16:53:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q5nA2GREnKSYyVcXhfZzt1BTtnRfYy7TWK7T80H+gKCwy4rSd2AQiMRg1YWeNb1z+bbjXce2rcXFp2jnVOGq7MW1r1dJXv49EnX0NxWy1B7iolKaQQ6loxfuDRLrG9/VYLvVqzUal0MS9rzShOh9Vy/Hd0b1DQF2eMc4AC13BzHdPVOWioS/986BU33/a5NI/w68ADziFHRLdsEHqcXB929+0jbkh8V9Pys4rDC1SR0FmyifI1jUiPyHd1Kvnsm5Dc2EKwl1U4WYhrKOq0YPFXdDTQbYLqbEvxCy3js7B8pGDw7RQNH+5Q3JaDncBK9lQci+g/KBtrVb3/53fajMXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uz2ZHPZkqZOvkgSFMqbc4mX+ShfDTBmP9c7GftvloBY=;
 b=c2aqeqSO7QvG5Rw2I9szxzD4BY5C2GMPGf3Qls4wpQuiu83bSmVwRPA4aAU8JJ07UJPNt/dzFrxQOy/JEu5BZVleU5UXTxSthBHcH0OKkrvMZ3bP9nQd9gjukzwqcp8u10r3C7pHG0Ry7Yl0vywR2CXzgSVAAJOiXdal135174TOw+WNUjjHjeLhSRre63feb8f3reij46Ao3noPRGU8T32Riw6TWIF/hcavAV8grR1e4IpBPTfrYwq2BcOQuDQDmd2wrG5FCtariqquKhTWDgOEheQ+B5meK/QVoKOsJFOzSjS8MDpjIjRXe5AlIUzOuiR9BkJoyGvlenH3ZWTHYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uz2ZHPZkqZOvkgSFMqbc4mX+ShfDTBmP9c7GftvloBY=;
 b=tpPB3UivI+thOVHD4Nbvugig7mSni96dltd+kjQezX4NcODaxBWyahsOWEh+yU3mGS4I948LyCAuw5vdeJFgty92oL2lO5xCaarG7jPYkugBH+S3p/TWD40u19OhuUjGJSdsqjHXgX+WGW+16JGHJMPFV7TIdGYz8+lWOMXi8P0=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3842.namprd11.prod.outlook.com
 (2603:10b6:408:82::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.24; Fri, 24 Jul
 2020 23:53:32 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.026; Fri, 24 Jul 2020
 23:53:32 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v6 02/16] ice: Add more basic
 protocol support for flow filter
Thread-Index: AQHWW3YI4YG7K07FKUKUaLnj8H5XmKkXdEMA
Date: Fri, 24 Jul 2020 23:53:32 +0000
Message-ID: <BN6PR1101MB2145193F6D0AFBB9F52796798C770@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
 <20200716133938.46921-3-qi.z.zhang@intel.com>
In-Reply-To: <20200716133938.46921-3-qi.z.zhang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8aed38cc-c54a-4e0e-83ba-08d8302cc5ad
x-ms-traffictypediagnostic: BN8PR11MB3842:
x-microsoft-antispam-prvs: <BN8PR11MB3842956885EFC787C0E1B0FD8C770@BN8PR11MB3842.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:538;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SCLh6WqGgTc6KrqaOKg0b9TUWCHuXEuyp2f3+HRe6wb+rqKNCciYIBwxHAKd71Yy2Cmz+scgQMBGCpEY33hBerJk94VoQGuti2XYkStuOsXNAK5sT2+YgCDzQ+p+qHzO1V5qDMyx0eNu482DBfZziv0ghdg+2hmmC4xpLNPYzsixWQSw54b3n2MUxQ6mH3qimGOKMYXZRLPvrL8Ay/wHn9OdmQ9I/gGuRTZhA0w3AY7ntxSe5lM8mPPYIgRTOppfD+I9AEBcmDJx9BxwKeVKVvldtGiJAt5Q/ctj4GPwncLyK5yIAti093KEiNsenZ92RniI82HxbWPObXQB3QCb6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(9686003)(6916009)(2906002)(55016002)(26005)(186003)(86362001)(33656002)(478600001)(64756008)(66556008)(66446008)(76116006)(66476007)(66946007)(5660300002)(52536014)(83380400001)(8676002)(53546011)(316002)(7696005)(71200400001)(6506007)(8936002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ydaGKtvQPC8m2EAXXobSPCm7KL+Xq6ePnjOEFtksiHzodehoU6a1zeKQ8MtpOZ1AcSEdxJO8w/0SFievv0rDxxCo7DEuVhedN+4cBqHxNIx9FOq3rin3dbacTmpDUws0k/L7+gxV2bjctWfgC2caxYZz8l+j1dxQXDNcm8/Y9LyaupfCWTYgwVRigsovWLo+CEauXupjqrMYuoBnMRuV6WqeLuZ4FmDunRQgqS93FPxhI5LcXVvTcBFEYyyVk6Wm2g8GExF/9PVt3wv3/RrivjK6sWjgBFuKB4UU364vh25fFmXx7VASz8hrx8rLbe8+q4gKmAHSz03Y6/fH8Jyhn0dQEM+S0d3qc8tfDL5ws2/hIlaVPfkhSyZRyKEuQe1L8Jmwtx4ku81StS3qqpmE5b7UCZd8bVBvkGaitJIaL8Wjzud60XTj0zcAfTepKy6+Wz+9ZCGDf4ixuZzUeACmGDTUS59s1mBk8yByKBfbxLk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8aed38cc-c54a-4e0e-83ba-08d8302cc5ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 23:53:32.5792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aEA7CppF/nW8SKpgQ3p+IV+WZKi1XE0szAFDiTQTzeypLFSmnVOSXGwUMo0xJ4inhtj53i1TvP0yTGFX77OQZRdIpZfKwxAQ4U8s5tFS/x0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v6 02/16] ice: Add more basic
 protocol support for flow filter
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 16, 2020 6:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v6 02/16] ice: Add more basic protocol
> support for flow filter
> 
> Add more protocol and field support for flow filter include:
> ETH, VLAN, ICMP, ARP and TCP flag.
> 
> Signed-off-by: Kevin Scott <kevin.c.scott@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_fdir.c          |  20 +++
>  drivers/net/ethernet/intel/ice/ice_fdir.h          |   1 +
>  drivers/net/ethernet/intel/ice/ice_flow.c          | 181
> ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_flow.h          |  20 +++
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   6 +
>  5 files changed, 222 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
