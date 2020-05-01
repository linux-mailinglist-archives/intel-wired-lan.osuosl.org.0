Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 755091C20E0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:47:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A0AB8858F;
	Fri,  1 May 2020 22:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWiF8CdtUqOW; Fri,  1 May 2020 22:47:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DD1F88502;
	Fri,  1 May 2020 22:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE5AC1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:47:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A736B262D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfLHFAYyHzOU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:47:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 9476B21511
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:47:45 +0000 (UTC)
IronPort-SDR: AXdUVBChQOHLh//PKkv7qP/AT191OX6BNRbOJbAhHtmAlZh3v55PB5+0h5ool+r+eFK15jzJfu
 XAWUQGQiI2EA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:47:44 -0700
IronPort-SDR: vKlZqDb4EADLG0/P4a/oYONIcZ/PvOj/f02tF8NCvF4SxlSwXi6lHkCRR+ff90GjZ5oVF4A0ZQ
 ymhVabtuqzOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="460400007"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 01 May 2020 15:47:43 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:47:43 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX115.amr.corp.intel.com (10.22.240.11) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:47:43 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.56) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:47:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPmvTGPSeAxFipNV5T1EKblOPKxBQglUozFKlT3ljuouDgWZgcWxp17DynFweHKyIlEpyUTgRggW/A2mIZY8mUpGLpBGpBfwoOTmwoOVHwPUvjku1ireF0oj1G7tGwcX2bLJW8dQP+n25mTcT9yRHgv65TTFeDxyjLoRAsAvaCWXJtLTfSFfxkLVRssL8Dr3GRbovrKp0guwvlRp6Bf99lvM30VPt2eZLTwuCVqVeOmCasV0ZBsia5tvydZdPFmR+t4+DzJdq4fIOyOIbPutFei1+ZLeMSiWBJAwl9H/5WA/TrN/LbMyrW9CJiYuZCNPjLU/tj2Dec25TNjVhVhQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tygDVrrzB4IUpjcgFDaK3eYVeCzXuR/W+DhkTVGwnWI=;
 b=H0d+pdHb/Etc3hM8n36kbARr5XbI/ZmW+h6KS26bch9/HPmfDv7Xw8KR6dLxP4Gv8ofiei8Ntz+ewCz0VkplHE9WBRRyL0hns/fE+iHfDIHKuXD0qveUhJZKaZPUbsmxl1abkL3VT6rcEwnBfvp9lHshpgSqGi4pAYBqCGdxYI6LtnkVztPJy5CDh5ORI/GDEHOhYnPvLMzWSRecH0+tgAOuiEixiEGMgcWLzXR2SmaUBEnmpFYLzyQ6imCnlqRtP6HtPak88MGQ6BrSE8aQ3OIZAfjtAGzreJFsNWXcjxc9LadHhQQpSxXuHGgHQNtfzdpVEfd1WUpCJWo+XimEHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tygDVrrzB4IUpjcgFDaK3eYVeCzXuR/W+DhkTVGwnWI=;
 b=Go3Aduj0qljHCt0xqEAg412l4CGEYiqggvtaW2629can0VIviULhmMlwHo8gsWUw6WGSOlJ7WahXun4wPqSGbV610b7dIuxLwJJ9MHwZ/quQg8gYWeUZ4GC2WVKBr/+hFw2sYy5hL+SdCEMNPvcjMtjiLDwJZMf6ZvPWkeOT5Uw=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3241.namprd11.prod.outlook.com (2603:10b6:5:58::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:47:42 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:47:42 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 16/19] igc: Fix NFC rule validation
Thread-Index: AQHWGnWQco0ysepwiUCUOhS7e6257aiT4AEw
Date: Fri, 1 May 2020 22:47:42 +0000
Message-ID: <DM6PR11MB2890EE318BC858D333BFAFB1BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-17-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-17-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: 5d4b7826-2221-4b6e-41f2-08d7ee21a85f
x-ms-traffictypediagnostic: DM6PR11MB3241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB32410CDE6D3192FC01FBD24ABCAB0@DM6PR11MB3241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7zi2vFHZYKTp9A/hXdLz06jDqMoRWjFgvZjep7/fT5jnX9OMYRtliwkNgRjS3XU2Ep9PPrEooa6keV4zh/NcOhG6aHIVbehJTJtDQZPq7AOg3yd0LTpiAVhKEL4z8j6Q/IZiDFSitiEtpIGCNd2orfxBhyGkrcpuWgeQsQU2LFxCC6QLl+bJntU3eGTAvyjDTAYWwPu8eRZAt4hN2EBeyPInl4AqHHhYUYd+XsoDtTXGHhsjlQa3xsnmYDellu2kO/CM+SSaAmIfG6Y+oPR+suQZ2c4WIYVazcxxxXm9kXqXmpsKe6PwU9kEXuHZ2CrTl5w7WnOp73QdPmD+7FRE4ULyOMDjajJ5dVj1LtccAIo35+HDQetkmO56ZrU0NslxEyi6rHPekIS+jMTCME3R23OgnTT1Q02+jRL6zlgmeoXDqTVJY2kKtwkuWD0Sz02e
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(39860400002)(376002)(346002)(366004)(66446008)(66946007)(4744005)(9686003)(55016002)(8676002)(71200400001)(7696005)(8936002)(2906002)(5660300002)(478600001)(64756008)(26005)(33656002)(110136005)(316002)(186003)(66556008)(66476007)(53546011)(6506007)(76116006)(52536014)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Xti2WWYQGuT4YSFJlk1QxZ+8S22akeaHCE2p+uyW/sspeqqxPxU7/8CQJUauFKhCK/rnbBqJUlGkE0DWANsWFZP1E1L9/IIr2svVte8VZ7EkZX3hHzf1nbMt6E8u3PqN4UxEcpOb34LMd5WXbjGrJD0T9RKmNAympuspnkpUHKGOGJ1fuG3Fnx2Oimxcqd2sqRpNQFdN3WuhtILoWR7Q5BnhHSMWwp21zRItpWFkAFHbNkfqsGjKdR8bR2A4CKVVE+vMCWtDTf7x8tpvipsDFEyJzX7069uPesf7zj26oGDHKEo7yTLeXlp5UDMIjSAta6KBAZq/impRb7Q165/H56cH/htOIsV2aQSs+oV1/wBQ3lZnthkjm2je1wNI92ye9/3UpeapT74u1Xw/GDTgr3hrFOAtLXNsCPmarrGhw1Ddq8O5n7URLUweMeMVY852YzO++YjjTQWC5nNAnM7SFj2Ua8pfCiesFG95zWeBBPwOJ0suYMoRRMLixGwvf3mI4m1bZhMKW8Y04CgIwcdGQ8qigr9yfMnpRA7+/NzjYSFqFEkQmy/cX9iTqWTKZy468Jh8Cdul+rzNiv4DsBEQBdYhOlLs3SkZx/sgHjwmZomSLGtGxmt0VUoHT6BY11hzSP2FEOEXAC/34jxkk2uUwcKuiDMjaH7WFwfQHlEZelIj8YVyywmUzby2gj/RVXyDzFsmHr3Z0PPWGS5yjM+D3c1p824+n4g4SfB80zz1EFtJjCGZi2hjFjdTlD3h0ew+l5EKKBJXB8uTTaIAaahyeRLIrqehOfySdKma+j5+A1nG7AnWWgZET40qfFAjisqa
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4b7826-2221-4b6e-41f2-08d7ee21a85f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:47:42.1311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c3kj3RWeFa2162dUsDbw0yUaR+h6b4zoEJ10xplKPYINVDxAREqyC/tQWieh5/5gnBzNAaF3WRO4uxmw1ZtIsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3241
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 16/19] igc: Fix NFC rule validation
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
> Subject: [Intel-wired-lan] [PATCH 16/19] igc: Fix NFC rule validation
> 
> If we try to overwrite an existing rule with the same filter but
> different action, we get EEXIST error as shown below.
> 
> $ ethtool -N eth0 flow-type ether dst <MACADDR> action 1 loc 10
> $ ethtool -N eth0 flow-type ether dst <MACADDR> action 2 loc 10
> rmgr: Cannot insert RX class rule: File exists
> 
> The second command is expected to overwrite the previous rule in location
> 10 and succeed.
> 
> This patch fixes igc_ethtool_check_nfc_rule() so it also checks the
> rules location. In case they match, the rule under evaluation should not
> be considered invalid.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
