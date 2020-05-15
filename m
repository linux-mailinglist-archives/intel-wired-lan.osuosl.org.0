Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4571D5A44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 437DF88F2C;
	Fri, 15 May 2020 19:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NsAumJtuG+z8; Fri, 15 May 2020 19:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 027FD88F30;
	Fri, 15 May 2020 19:44:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC6F61BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C61A989BB3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBUu8nZmovUf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53E4989BC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:37 +0000 (UTC)
IronPort-SDR: tagV4EKKk8BxwP1CbaFmJOgPploul26FQvNpa/IE0OCrZcMbPO/hCJ4NIAlrDKFWq6zBOWs41l
 xT2ZQsbt/XGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:44:37 -0700
IronPort-SDR: JaZXiJClvERL2f6bolDw+Xe/85bY3tV9rEOvjzghCbmg3XlKZJkJ8HQQAHzej1Z9rdyLcPDkML
 dqrOOqoKYlIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="372783745"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2020 12:44:36 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:44:36 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.52) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tnbvjv96+Cac2ZOo7Rw9CleWTetJc9EcF9Ubukx+U4Wp6a2WTCGeFx+nkNb8zsdGIn8K1LG74/ZkbhUnzfxNebxCGmoCggCbNfMEAfB+COPSoj2QPEiUH2MjWYktfLF2IWejJbu9jbDmZ8BArrmXpajTDQaH1uyVOd8ReZsbykZhd0DtbSf44dJShp3ybgXxds0eK572beQKaN4cwBEXPh2l03eJ7UGhp2L3ofCefGF5UXoZg0R/z2tVclrB0Re/dMrmc1KxFmU0SYKpk5hHFH0EMZlIOsmHo5zq24DhlmsxNdDJOJnob3pqLOcLy4RYuI/ah0xhBMopySjJvh5TOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSuizYt0R/b61TXh7Cej1dQyney6g7ox04wzLdPEUWk=;
 b=QBbQelOnQBxIA38bwUjf0y8as4C0GIRQeiet+heyzqvoISy+DKk6IVs3MX/uE1tRZWBUYCS93MVQNr3gXKLgsygRZMvc8ACFvOohxmiDePozUJg7WhA1nQvHTm9Jahge70LOx5tqDcTO558gkGz1TqaB0tl7hGy3PFAcrTtVC83j1xwhrojSZmJjf02k3BrzcH/dDXkD1Kl2LxPXLmk/MvZcSXkm4s45M0ZfzBOeo64Lauhh4xbXhnONh3fC/pTalg082qbfLRV5HKKtOFxXaYQZPB/CfO1isChRoLZ4Gp0F63hPQejhIyZq7rGKrgJtFpJMWzY7irRkyDBuYtudqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSuizYt0R/b61TXh7Cej1dQyney6g7ox04wzLdPEUWk=;
 b=GwlvOzmPrM05wvgp4Q1sM2vqSPbNZkAEM7SWeptRpGijLu1qioBEj3r8u6YQe/PjQvkPQhNvbzLDdVPjXCsfh+HaPbPPmtciHt9urJrAU+Zk7uLuBsORU1pPTs4IMLfybQmsI3Sj+Nbxd3Ub0vnidEL2pQzwBL9EOG7FR1FJ9jI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20; Fri, 15 May 2020 19:44:35 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:44:35 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 06/15] ice: Provide more meaningful
 error message
Thread-Index: AQHWJNHRriMRABlJZkaHuS8SRxQt86ipmMCw
Date: Fri, 15 May 2020 19:44:34 +0000
Message-ID: <DM5PR11MB16597EB6599B6D441DD2F6498CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16ea54d4-5b9a-46fb-8dd5-08d7f9086556
x-ms-traffictypediagnostic: DM5PR11MB1945:
x-microsoft-antispam-prvs: <DM5PR11MB194548A5DB0E0449D235E0F48CBD0@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QcYS/zg3Gx/qSR11B/S5IKuSoXa9VPjQZQVriiBXRARlxelOaFOFeI2hwmBcoC1oESNFy73Dy1DNK2LtD07M5NxzbjHBUlkPJQzH3tX1xv0w2H5gzT3kfvs9JqIQSR0/8ERPWXoJLr99m3V4kn/IG2gBOwfpDgJoPHLyA5a+c9rqcY4kDC++lP9jWu7y/Jy4ipHm1s+2uX7FX0ruPLJwZyvV+68Z7bcDQlerxwUtGFK5wFQH90APLmftIcrx8F9CI7pwjle19tsc//67WrAv4v37OGUL2PdYGgM4CcUNgESXSGM+LVksKQr0QoUlLArXAS7T7WI5wCz3sk/or3jirUXoN4YxfSr+g2zGwC4X0yBQW8k7qG96y61HRkzfZvWEA1Pvij7fHDx61KfCByg650BQxo8QiSuIej2kz2/g8T8n6SLO9KdiJc7t7wRC9Yrx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(136003)(366004)(376002)(396003)(33656002)(478600001)(86362001)(76116006)(6506007)(66556008)(9686003)(15650500001)(6916009)(2906002)(55016002)(66946007)(8676002)(4744005)(8936002)(71200400001)(186003)(66476007)(5660300002)(7696005)(66446008)(53546011)(316002)(64756008)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rX6a8avf2+dhlRjtVgQUYq+eCXHLNACm5YokA+tB5RBkkePzsCJ9kmHXmgIHE4TCyrywn0Ogd3jS0pv0uPq7iZ1kWf/lXTzH4/b555WK6/6uTYrVPfVHQGOx5eL3UISTQKQRSuHvh+hr7MvhU3yUTnVz0a4zxXBsyJ0IbX5z/94UhCy73TiBmkmVHhtXajFTdlI8CFblIUdOaMTFgOsJv863K1jjGmqUUx+iG7tgNMA800awQOEQGazB7mAhsLh/5JGni90WJWqNmFWv0e0mSh1L8UggQCNhdGIxcTQzIY+nBlVWtQXa8NxXKwOmmmqRk9EPQWFySLe2Cjc/qdL0vvMPc4wYoDXrC4UsHHT7ljyqkDrK27zrRnbcdy9p4OEezfzv222pJggBRoOtNgmwGYI2i+cQQVhHAHTKciuzhl7OsAIN+3c3NKUbBsZJta1EpgXS5iSxrcGCIKNct62g6mfUyXVgsrP7urM+S671jM5gMNDdzh2bfMQ0gURihY9v
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 16ea54d4-5b9a-46fb-8dd5-08d7f9086556
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:44:35.0125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6Fke56S+/pMXPsA4GbKSUTSPjUyd39p47rt7pR4JMWMdQx8bn27HPsX7SQehA/5Kl5ZQBAbXvMOupFjOP2iR591mffUud8bYoOuzsOY9L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 06/15] ice: Provide more
 meaningful error message
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 06/15] ice: Provide more meaningful
> error message
> 
> From: Lihong Yang <lihong.yang@intel.com>
> 
> When printing the ice status or AQ error codes, instead of printing out the
> numerical value, provide the description of the error code. This provides
> more info about the issue than a number.
> 
> Signed-off-by: Lihong Yang <lihong.yang@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  drivers/net/ethernet/intel/ice/ice_base.c     |   8 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |  42 +++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 103 +++++-----
>  drivers/net/ethernet/intel/ice/ice_main.c     | 177 +++++++++++++++---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  |  28 +--
>  6 files changed, 247 insertions(+), 113 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
