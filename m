Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD42443DB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 05:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F80024C4F;
	Fri, 14 Aug 2020 03:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A471YV6EHJEY; Fri, 14 Aug 2020 03:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E526D24C01;
	Fri, 14 Aug 2020 03:07:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98B171BF34F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9357D88822
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJhF5MTI1dSO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 03:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C9AB188814
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:07:53 +0000 (UTC)
IronPort-SDR: hceh/LPqzqPymYmc6/WWaCpK3JJ94Jz5J0qdW5nftuFzHSyZoltpRr5z9Y9kiH3fYQCbSmic1t
 5TFi+HJl+c9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="172398574"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="172398574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 20:07:53 -0700
IronPort-SDR: Uz09ppZeCTphut5aKmbztfUtWGYik+Bgdsv1UDAcwq76vzxZhRNhTeKaa/KkURJ2oCQD6gEmnW
 CNOtBJwJamgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="318748029"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by fmsmga004.fm.intel.com with ESMTP; 13 Aug 2020 20:07:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 20:07:52 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 20:07:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 20:07:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nhBxBkfLCLja85Fx93wnugcLwiIcnDD127WCgcpDJVCJChm+a+96rNVDud0KaQ3LZQw9u/3PVdc/Sa585l1uPOS0BNRcV1a7pRsISIDljpb5ijpXfEXdgbd3C0TURjl6ei9nUd0SEAwIofR4OVYegjiGRGC2JLizdQ4Dh4ocsZXAuXPjV7hzK7MYI/bwSNVpD9FudXeEJ9oB+akJCvYKUmSPpxaQvT86Z1QaMMzP65bzAYjo9GT9yy4UhRLu/YN0hq1cL8hDVjl+09tW7/JwKRrwKE5mhx6ZScNeW2/cUDG0vPpE4y6Djrtg0VDLdOi3P+fyWV355RWn9/nJY4Zidw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xoRXaDApAZTu/fc4jAQTjI/a/tM1AH+A8LRPPDiGj4=;
 b=cGcKcL+WprBPMAQbvxiiecF9iHy90yYMpXs7210wb/VlB8BjkJRX/+HL4Nk6BK+SyPrcbB965/2u0KspXHrtsaD0kTU8pHysjFQTkSE+v1xDkNojCLjA8MrLav6I7+dr09u3t7+PtNXXgun8eTM8iYloYfTfQl9LZAx5EfvMiZeFgM475RJmqt+nOwLeCoP/Lq3FHrcs2VMXoGC/DFA7Xq9Su6wyCFXrAyiShWOIQhkKm99KUii+zlmz9ijqM4hPcaYyl1DMKPavZDqsHBmPlzMzhMXJ+sqULExgBu40kU3i8ENtTpuequ/WF9uuyW0ehUypTj2o9rpPxfMQ6azoNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/xoRXaDApAZTu/fc4jAQTjI/a/tM1AH+A8LRPPDiGj4=;
 b=RN4F2KDQIsPguQTKCSnP/BCGOGmz5ehgHmELLEkXSgYs12X+TcAoZ8il76OqX/Q6ph5IbNTQony5V0Sl259k8km4NVSdAvkZpoZbk/CxtWptEVlqagHPY1dAJfdHjqXPUDMBg3r7+b0pu7BypPC/nMllR8oomWZAytlScdQ3Cp0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1689.namprd11.prod.outlook.com (2603:10b6:3:14::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 03:07:49 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 03:07:49 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_TSYNCTXCTL_VALID
 macro
Thread-Index: AQHWZTg321QM/i1PZkOPYvoj/qA8bqk3BZlA
Date: Fri, 14 Aug 2020 03:07:49 +0000
Message-ID: <DM6PR11MB2890613A7119693298E53996BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-2-andre.guedes@intel.com>
In-Reply-To: <20200728233754.65747-2-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2497c433-aec4-41bc-f386-08d83fff39f6
x-ms-traffictypediagnostic: DM5PR11MB1689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1689E02D5B8E144AC566EEB3BC400@DM5PR11MB1689.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gr0YQ1dW47meJGUBGZduyNO8trD2KB9lUbIDuU7kXkX+6ffhxoQyTdzWywbXZeU1VYu4JXAydb/3XPLZZNUUZ0ymMJ5csFWNpmmRlrBoZi+CnYzPwBpOZSAGh+S8YFP2/NpCExpfQmiYpm25ragsVj0lH8W7+rPlqYrdiFVmaC0MPVbcEuAEzGoxM/+h7W0YclOlI5jvpkYQsODrCYRTcL4mmlKr0gOjXmsIbzazmEZws03IWb92mGLar2VVczwvtzQygauhU6OxrXa6TDC2faJogCM7NExAEFz7+l78tRLxj2qmiKHK9SWEWS/wm5VU/hEQlpX3TzP7q6Cb3q64tw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008)(55016002)(33656002)(110136005)(52536014)(5660300002)(2906002)(6506007)(53546011)(316002)(8676002)(8936002)(71200400001)(7696005)(9686003)(4744005)(26005)(478600001)(86362001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: SOosPE6bl3nL1GSB3ApDH1rcjhh3u0DhB5lRC6qqsTDfNKhxFQDzBxleHeyKqU4fcGbwUQsOTQ0XBVvVnjvjKAChrjfYIFRgHRilmBLkIpVq0nLbMTPzsXK/a7Y09kOX0mNsLiBGYs46SfPzD/1gpL9KtSBK9J1hJsCGFqWq2nTpjTALVRxC+jW4R6pA21ifIb9Gw2DJWedoNmb/G0pHEmxWXedpXCDW0fC9UlZKdMSSXG5cO25BhjOakgig1XyglxOL9rDrDzrEmcCfroX0T4Dm67FE4XPkwwrms2b7aHiVppyOXzNvMNDrS/AME4525VuwV4hbpNv+wrAjAMrtzLCXUWHH+hcWUWLmUqIVEZMt1fvJBQ6mXdKmqJYWQFjQ5ELZw4/eymOEPOx785sbfaOmSgGdLhdNAkPV/BS8pGapuT/kOY+FwhNh2Subhgcm6+8H8gTapdAxRAfFoTdCiAYo0/wIc8fwZLZxfaMHajrx9cVTkisRBQACsG6TyjCmIm7rCVz0DaFm0O87QLhXj9LVdi5UBny5v9cZay/5oIUtkdntze8eeCr7DYTW7qpMbkXmWUWvt6eQRhMsIbunT0EeDFS06LGHsILc58CkVJFpFmLv7RWRw/97FZQ5jpIHUpf6xD8Ap2VAVNtd7cdcGQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2497c433-aec4-41bc-f386-08d83fff39f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 03:07:49.2971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s9RdO2i7bHa1joHpt+aMWnpsdY6d5OoX/5XWnQHUaiTuGsHBuVG3E2f1J5DTh/6vkIo8Ti9JstoDkMj+dEnoIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_TSYNCTXCTL_VALID
 macro
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
> Sent: Tuesday, July 28, 2020 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/4] igc: Rename IGC_TSYNCTXCTL_VALID
> macro
> 
> This patch renames the IGC_TSYNCTXCTL_VALID macro to IGC_TSYNCTXCTL_
> TXTT_0 so it matches the datasheet.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
