Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E478B1D5A4C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:47:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 971D5204FF;
	Fri, 15 May 2020 19:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfEC62TrVPG4; Fri, 15 May 2020 19:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 557022282E;
	Fri, 15 May 2020 19:47:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFCBB1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA3F988F30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBleo7DbBPFV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:46:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 430D088F2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:46:53 +0000 (UTC)
IronPort-SDR: NmaNLrM85JxFgNwblcfIY9Z3ZxjU3UAqJZLHud24LixWwlA1qrA3jgx9utsVqawb/kFUJJrrDV
 kRG9vXhqLmEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:46:52 -0700
IronPort-SDR: pSiFU4QvYqE1xfN+vG7suypJIQiBzt//ZoOar0IdjwHx1Z1CyW3hqigfS6Qryxyaj6JwImSDhr
 L3CQHfKF60dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="266708610"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 15 May 2020 12:46:52 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:46:52 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:46:51 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 15 May 2020 12:46:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RSp9DUgF/V6ZXrDKKtqt2DnFgeDrz+8GeUOWLdStruk2rNKsdJTOMbFejDqwm8eYpWco0FJOQU8MeW5MyWKRfIBNCWjkckAwMynEMJwfj5JtaeVb84Q6Lzw98fg+1VPx1AN2OER50ILjui0zSZA1PWP31GFB4XLU0S9UXEtzhfNqmj1twISIcwEYrBsDRp3YlTmlem7YQaL9c38rJy0B6/vNqBNBUBIkhpd2bd+xiT+L2jscoDtb4elpaoDKMsHF6vXjU2mvBG/hHCinZdwMMCTtHUDgqdELNiZM96X/IlvFYAMoVMp1UqCyYl7g4jvo1DEzMbYWXj2fDX6tOJ1TBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hnCIuS0EmOsqN0YKM0cu7HLe9PSx9fYi4fBCy6mAnNA=;
 b=PWK6o/U/HJ5GhXtfiuCdXoS/0ZBH82QzJtVTmi3b8NWga5NsDA+hReYZr9cfnJHKA+AlyxkB+iAlfhEOIx+K8NUf8S6D+8vd3a8IHXEC/h0L+NS87BBGWHL0YuOA9MoKQ0aVZRcYq2u35XiVR/lmM6jrIX/To4i8y/x7TNyFae8ZQJXQotZAnB9cpGPWaxwtUhT3MiqiA2o4nGEfC7A2JISCBViQWe2ESvUN74rIgCSzO3c97lGIlMEKrZjrcarelM7gSh0To08225sCR2BVG3AW3ajRMXFfIKs7FqGQcX5FWxgNRbb1COTwwP46tZ3XMeCYsFSq2I0WMMJPnwJGKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hnCIuS0EmOsqN0YKM0cu7HLe9PSx9fYi4fBCy6mAnNA=;
 b=OWfUKYLHR97XtjbbbCMV6qNlGW5g4prMm3+O9rNIyhpksoL/3hAe0eyRCG9R1Lwga5rWxUJfg/M2JNwRuXJG+Exwbqq0RlECrA33Q6fKtXx7ZC0SR3ASp9maDon+jhmqJKOpM94fABF58NKiRitSLQsqOAxlg15/yKuX7eg6iYU=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:46:50 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:46:50 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 11/15] ice: Fix check for
 removing/adding mac filters
Thread-Index: AQHWJNHP/rXDXLs/1kK1ZH2oJs+WmaipmW8w
Date: Fri, 15 May 2020 19:46:50 +0000
Message-ID: <DM5PR11MB16592C08453F7FE06753971A8CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-11-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-11-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 4a0ac32a-388d-404b-c007-08d7f908b635
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB1452B4CD618A99593E0C2F238CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uHaUJL5e08b/7tKIzWOxbYtM9RTsxWtUa0t4WlGbgufipmH3AmJJ7p1QnX6oNC4ygo+mzuAhfare1aOOBZzeyQihSYvm/Al67ETWa/GZdL8nxiShvkaXM3T7kViss7E1/rkX1CFhoa6PVECHxNmkTSSLqoEqE90rn6VFkrvaqxhH/ZDe9C2zflXivRvLtAbL96SYskv7ugQw9c9SB+QhffaHWZzxkYOCNMcn+vCFqvSiv6/NE/wXT9QX10skAQwJo+d2Z86/2jScUQ0A6N/rS86uPGhEJ8FGavCCxfvVOwH8dUdGsFq4/mjKyvRllDdStITtvTMI0SjUf0SnPML8vrUGbMjxBEXOHNNMiR4i4SmEFRlx+WfaJNUAXpwZ5/NBVWuC9+akRkUo6HXI+Pp/tereSzezJGVsgDOSXu6k7ypV6ntSdDe09EMb6O1quQ/+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(4744005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 72H/PwUYM41aLU06FhwfYAKZlc0eXQAzQUyjHz1T5pA+aaFNXtf/rTrDwEZP3u8UA3Qu+0hepQITxtuOj8Oovb6VRcOwSsv+sYaQcKLSNso2caY5bqtk6G/G9Fhxfb/lxNYARLAFHfC9/SquclK3233MdFtDR8mx+qU+YzOZVHD7zBbTlxwLSh2tezTsPfJrC7JjwmcPWImaPaOKiHyTZUWYCCqeDf70C5eZQ4EIjDGR0L9u+yEmd8QV/3yDQ6cDD7cd+aUb2T7ESoQQvyPdLX2Mu1i5ZLis0o5G8COAB1D+zufLwmsFohU4v+hoAHza4+CDNkEbdoQ54wugPSFIgrGHgRld7mBHsofqRHTH9LngC6E+++cgVeufdK5wtyaxUZMIPXmMzb1DLldJDwCL8y3dgstBQMq6gQagOyNZpOVqPzQ5F8uTcKEm7mwOmpls1A16/2q+e8zvwl8foauhOJpROC2xVHUn1ZbfDov9WFzBn0sBmozJerKz51oHfdZd
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a0ac32a-388d-404b-c007-08d7f908b635
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:46:50.7625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: icyFNHnWiwhWECl+Jo4hk5HBLRNeDJkc95fxugx5tkIt7ZKo1LqoqFdH8QKNeoVEDh1nYf4IcQGaz9IAh/VIUauWu19dDS4WA/tAqLVPCh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 11/15] ice: Fix check for
 removing/adding mac filters
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
> Subject: [Intel-wired-lan] [PATCH S41 11/15] ice: Fix check for
> removing/adding mac filters
> 
> From: Lihong Yang <lihong.yang@intel.com>
> 
> In function ice_set_mac_address, we will remove old dev_addr before
> adding the new MAC. In the removing and adding process of the MAC, there
> is no need to return error if the check finds the to-be-removed dev_addr
> does not exist in the MAC filter list or the to-be-added mac already exists,
> keep going or return success accordingly.
> 
> Signed-off-by: Lihong Yang <lihong.yang@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
