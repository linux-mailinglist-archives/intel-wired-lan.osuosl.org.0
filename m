Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683DB1C2078
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:18:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0874989280;
	Fri,  1 May 2020 22:18:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zvNxl4uIfHHw; Fri,  1 May 2020 22:18:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9995C8928E;
	Fri,  1 May 2020 22:18:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98A351BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93F5826285
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZuP0BuCITbqf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:18:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id A65D826261
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:18:22 +0000 (UTC)
IronPort-SDR: Tp37spoSX6LU7oQ4fSSV6gmNiPgKmcnZ0XxrLYBc9dUWE3w2CgSyJfhgpF7xpsFr2CaQeXPUmf
 Jp+bZViQFMgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:18:22 -0700
IronPort-SDR: CVcohsO3hoixFQVvx+2ADlAvByj6VfnLD3ZcgpN/kXxhkvj4JDMwAQC8nFtXHpF+r0E0+iAmDm
 oValo34eIGHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294932714"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 15:18:21 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:18:21 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX114.amr.corp.intel.com (10.22.240.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:18:21 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.58) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:18:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxU2eoJaNb4ULVYXA/LxfuS7Fm9SD0U5pwv+4+5ludspwSjs9OxKMnakN1ttuNAe+jdkiv72x+8945fjGHLdV3U9TF4AZXrVjR0MIadyl3Bm369jNcxNG/t11KHXPUgP4gcLn6ToIJwEW9bL2tXbNfRuRnDUsYYdaOxnu7Zjt6hR9Eq6uBQg94Z9j8//e8wrgGOCXkU7ZvGYSHvZu/ZejGUNPAnSOE5Xl8gpejG8EwrORRVXKWqBn0YxLRgCGHmIxQ2iYYP6Gohiy9OcjlH/wBbT0cDcsBxSvMIc+AVnmiSlvZGHaXGrLdaBYj6n+4XwjWQLZZDxoUYm6pf/5j3YSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iPB8Ub2N8XUbpwENHqw5uAQHSYpzj1WzjTuff1qUEs=;
 b=l2jOqw5sefCmWwd4rqkWVy5vDdSZOtGj0wlRmQUfeFxf7w5ksTpW1Mg3gBTde7ql1yr/jAcWwkijNlWVS6wvePWvcJfgIFvjoFEo8VVKIdqe7c/GE6x+Dl+kMI9yCV1lM7E5IIKsij2OCQkzUCsReERTzXiZjPzYt7G4NEELkGkaHnffpbM2wJCutqXIeynG4UGOz98pcqsAfwgchJQxqQsMoFTgrxnLDWlYwywQV8ERlrq1q5/AuKHr96pPvQw4hwfnzvF2v86cOeLDhrv+dTisB4j1cNA4afIAK10bwFDGKkwFB+f8eSZamujcEvv4vgcFKlUiTHEczDSTdXQ8zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iPB8Ub2N8XUbpwENHqw5uAQHSYpzj1WzjTuff1qUEs=;
 b=GBmTy7n2r5n/3zdvDqjYsODMpAs5G03rih8I4GpaJGQzyu3lJMAXLBlDPRyMJCp3kVn8+Kk7XtKf5hYbWlhEDmR3Fz22yV4sNtUdRdnvG8LRxojObtJsSuIOSrGfrn7Na+BLcnNRZwqKBfq4oQbAglHUKpKlEc1tx0r/DiWTG30=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4028.namprd11.prod.outlook.com (2603:10b6:5:195::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 1 May 2020 22:18:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:18:19 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 06/19] igc: Align terms used in NFC
 support code
Thread-Index: AQHWGnV+C4iS4EKEkEWz1z3unsdfkaiT185g
Date: Fri, 1 May 2020 22:18:19 +0000
Message-ID: <DM6PR11MB28900CC4E0D001E9D1552C3ABCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-7-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-7-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7171d57b-b24e-4600-9212-08d7ee1d8dfa
x-ms-traffictypediagnostic: DM6PR11MB4028:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB40281295AB95B7BB675F90DFBCAB0@DM6PR11MB4028.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0390DB4BDA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(396003)(346002)(376002)(136003)(186003)(53546011)(110136005)(9686003)(478600001)(6506007)(71200400001)(5660300002)(8936002)(26005)(55016002)(8676002)(316002)(86362001)(2906002)(7696005)(52536014)(4744005)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sscUmXLITcafFi9EV3hVq/2LC3QXEteYCzgbcZxr/ysSKCGtCaf0QWCTUNMmsHc2tMJzs97ev78MBAbgTA2nlCxlOv+FP1yzBpLn/57UeZ7qhTCWsmTlNqoqb5CyIP82B+0TK5BjclKEgYV0xENuLnHBoUoGn8Qy1srbqilCG4LDhfzrhNdFTYfPKTyNv8x3tcmEV9UlZ0/jyLFGqwVgvlqeHTO2P52V4KWpXs6RA8APPUFoRDJ16c1ILygXa3FQkglZqv09KL4kcF4+u/P5Lj1MrkVK3+1i8SeIH7Qq1YeDxjjy4/f5wQdV1U+NngSbR18IaA3NmgtyOBeCxBlZhdvCppoZDCD8H5krmtDRuwHa5nwnPKpX1trk2HLnx/EqphdsUH90+Tz+4dQrzwUF8ltjrNKTkaheiEZik2j6e/A0eMm4CoAYHCEbM3RsjTir
x-ms-exchange-antispam-messagedata: vmQ9eQisGxA9vzbF0vlndNTooXHUuhZkIR3lZ1g6vliW3K5QWfpAdsvZkxljScKQq0w4Qv1PnaSDzKsFG8aDx6pMo9cr9igVIU61YsQ5doTb2pifOd5kjAqWVia6C4/hXiC/aWOpA7L4DhOK9l+ZJbRp6MnSH3sRh3S6YDnm/YP1V0pZtRdB26Dmx1ToeBb4AxKirTYFk5opSSevg4F57DqvpUxgT+6kCE5jTCieISetsEsukbSjztkA3SnscDO/M/yCbhD1RYOHGinrfSK8mRznejDGkU0xdHZdEVinSJTmTh2rl2hLhNKrCRAP3vTCNNMIZ0KVRvbF+9QOACpgv6XkN2pvEWNkAK2umTrwIRrfRIn34E8Xhjr+dIT19jd2N59+Fl2fxmFFaYXOh6tv5jD5vPKqfnBi605hQrfzKQuiyw6Typ6kS/UsNLrtJJT5CPZUJtcX7m9JohsBd67WGvbJApyC105sNhmU69guGMwyyRP8xcFVBJGtL60tqfEL4qnxS/Ce64nNHqxpCiHmj43gEHZwS+jDudFzvC5N1sOyLUKzgjRHYIhd5V3XUWW/rxYqKdWdFKm4niyrMDszIrfyzrBOyP46jSAksWO1db308p4DS6cmP9XVQNN7W/sgeP6zWVyYesZ96bMCqcbyP+svn9ym9iixYCgLivMb1pHZ1TP6+wSGIhfOFyPae1s+YMOaRC0GeCAL7LUC6vB7OMqNTO3JHhUh6yCJWbnENxBUYgKqZIRXCzZSc81ijHQFBMciKFRJHP2CWo7MQTI8VXwwWE7zKzBI4TJsFEtySgJrU958VgHAGWLszY95yUrB
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7171d57b-b24e-4600-9212-08d7ee1d8dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:18:19.8526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ni4qgzwDbAPRq2a0ugGu/Z2YadDu5zMP9x7AHpaXOMC6IktmsRVnlrHgOv74SyTi0f7fRL/AqwssrfJD68Gtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 06/19] igc: Align terms used in NFC
 support code
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 06/19] igc: Align terms used in NFC support
> code
> 
> The Network Flow Classification (NFC) support code from IGC driver uses
> terms such as 'rule', 'filter', 'entry', 'input' interchangeably when
> referring to NFC rules, making it harder to follow the code. This patch
> renames IGC's internal APIs, structs, and variables so we stick with the
> term 'rule' since this is the term used in ethtool APIs. It also removes
> some not applicable comments along the way. No functionality is changed
> by this patch.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  29 ++--
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 160 +++++++++----------
>  drivers/net/ethernet/intel/igc/igc_main.c    |  42 ++---
>  3 files changed, 114 insertions(+), 117 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
