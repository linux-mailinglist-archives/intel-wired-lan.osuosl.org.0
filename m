Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5710234BCF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 21:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4FDF8880E;
	Fri, 31 Jul 2020 19:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id otR3a1R+fdK4; Fri, 31 Jul 2020 19:57:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E32ED887FE;
	Fri, 31 Jul 2020 19:57:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7790C1BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72D3981F3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cyH6ctK9ggv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 19:57:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CAD9080CFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 19:57:25 +0000 (UTC)
IronPort-SDR: LIEp0/4/pGLUuk9ppZkeTTAlGKe1aG8IrAV6ToneNNtr/3bBqdm4ZwhiaPj2vOOkSjiJmYXkHG
 1WvNC9PPjeQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="149677578"
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="149677578"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 12:57:25 -0700
IronPort-SDR: zXFLVXqgeXAyMKLUkZxrc7NzD2QMXc3qoz1MdZDIWsUiijrRmmHhAHbS1xsXpM6iPvNpdT1Mu4
 UV2SzDCUeZiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,419,1589266800"; d="scan'208";a="291311158"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 31 Jul 2020 12:57:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 31 Jul 2020 12:57:24 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 31 Jul 2020 12:57:24 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX112.amr.corp.intel.com (10.22.240.13) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:57:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jul 2020 12:57:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ox190GYTbVILSd4oLrzgrNAX0MXOmDwFOK/wO6zw336wLqxTE+kw/WyMGG5s4UhrY5eWej0lx87r0/JmdIN+VSObRDIBnWvj69iYs1qXnHu9inmDT068T600ysZpKkPbHk6ftoCgDccpLd4eXLpoD38/JUV0ZEGbICOM4XWpRjvyxuMlbtIvftYW3VwTWWa3IsCS7Kd+XAEGLTTIA8PS94RsuFSVYOfGBIZXlDc07e+y2+lWLMZgX4tgURo6i7IfCe57wxnUknW0KiXmOo8ZKC1Q2I9yIyHMSw6EtEP9woV/mFMaNUBdph/GacsoyxIC3AnBQxR+QvOEMFUjttFm1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBHh2a+5SVS9hWDGUEjgFRw11LndsFc2mCQg86EfXII=;
 b=I7xjSAXrf0SH6kBx2/ULdP/ZQhfa2mZEWAyNoj4fujok0pnDZqB7J1hQ0JaaChxzdWm1l2QJHcjLly+DmHLVOVnzwtlg8+mslyRW+E5LaoyT1O8hwzUtPu6iWo5Ul5gnucoxK75rvJeswUnzESsWWdmhM13YH3n4pQiLh10kcvtU1cWc1WV0fd1vWzqRkCX+DcEdPrSJtpHqXLy1z4WZ27SJ7daR9ciB8f3HJS0M8HxwreiqQ9CLLxnFDOdukJN5QXS58+0P9xDpdn9j227577ok/n36BhgF6BbB8vrA2qYrjqVZyBJArHdfVlSQQuQhHcSZLafPvKKQUB0sBXxlbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBHh2a+5SVS9hWDGUEjgFRw11LndsFc2mCQg86EfXII=;
 b=Std3ii9GPsR0ydR6boZAaZK5Zp9E7pv6v9c4W4JnyzGSXUY0eW4IBYtYA5leRCJDz1B/NKmF7RBYeOAAh/WHBpNI4AYd3L6C/yd1AekxhVpl9fmHk7sDr6wGBBbrZxwcYnDUMhafNa9YsdGOfYPjozVjJEd3ZTXw8B1yx4LN+q4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1329.namprd11.prod.outlook.com
 (2603:10b6:404:47::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Fri, 31 Jul
 2020 19:57:22 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3216.034; Fri, 31 Jul 2020
 19:57:22 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S51 02/13] ice: fix the vsi_id mask to
 be 10 bit for set_rss_lut
Thread-Index: AQHWZgfEh+HJPkyBdEC8+XkgjTk7IKkiHXgg
Date: Fri, 31 Jul 2020 19:57:22 +0000
Message-ID: <BN6PR1101MB2145CABD68FB06B9D6A84E168C4E0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
 <20200730001922.52568-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200730001922.52568-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a209f59f-7860-49c8-a1db-08d8358bf097
x-ms-traffictypediagnostic: BN6PR11MB1329:
x-microsoft-antispam-prvs: <BN6PR11MB1329B9DC12D78C05297283638C4E0@BN6PR11MB1329.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZlYJLtvq1ot5PlbArHPVc6y+SJ7VYPtYYgzYfpbgnTiaELSxb0T5YH1tjw3Kb2x/QLUhtyu2qPCgESYHm4fk6cgqkh+1VxOehu0YXdaZQbxZD7MawhHK5te0D28x+zQPh81b+BiIm41Jt9hho4BM3k8QLZ0RvJEq5Z2f2HtGKQ033grlKdVdc6u4pZ6zJ+vlIHqFtd8MCyJPE126PFziDnN8F70GYilAp0cYkKtqhVvxSLSpZ3RlsCMw73ZV1xPceAPiELp4PjdnFy55JUN9Y7qDdpqRZXkQ9LCJeQUuRIlS0WA9fZ64PkJCsoAbD7v3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(55016002)(83380400001)(478600001)(52536014)(86362001)(9686003)(5660300002)(64756008)(8676002)(26005)(33656002)(4744005)(71200400001)(316002)(53546011)(6506007)(8936002)(7696005)(186003)(6916009)(66946007)(76116006)(66556008)(66476007)(66446008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: GcJiXxUgNiRSE7jcNGjOmEeAPWH5RfnzHNppvKjLul3NrFf1AQtvFY4G8I9QyFzexCy+WiseJzYS69+xFXLs/GW6KHV48LMmLdHC1qWWwvDKURObV/PfDppnIfXNw4d1vPs4fqwRfSHiS93i2fkvUKYMHrTmFBExjq5JDt5+L24r/2qDP8pjKAFaXSn/STw9r5tjAThLeSYz0oRwKJV4/aPgAdveON707w9bgEkSlfbIjuaXXp+yiQPZRv7IkgIbrF78FmcYJzuDgMwsBcvx1xq6wNgb46SmybrSoOVrK0gnSY5AAo355z2BVJOHKMW0JoFgP2j1BBc11Zpr7RxUzsvNHVfwH7giUZsFIPsH9ATyqNZtJADnJurx9YbdKfFjo5dtgCXp8ODxlvFAdF3JkbpLsSS5sIuPsWb6btTmvOGuaEIRywWfUM/zp6SVFBprmcTOkmp+5KU0beUjoM2xHv4cN5jKyEdL88QuQ9U9nXM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a209f59f-7860-49c8-a1db-08d8358bf097
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2020 19:57:22.4291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sUKY0o6YjaEQ3jtt3j6q8cB/71m7m0rUmx7ba3IgceDAAn15SPdZfH/F3UsiYL33uaN3zo/a3Wa107xg6cRZjyUM+PptaHnZmXrOdrrGrME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S51 02/13] ice: fix the vsi_id mask to
 be 10 bit for set_rss_lut
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
> Sent: Wednesday, July 29, 2020 5:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S51 02/13] ice: fix the vsi_id mask to be 10
> bit for set_rss_lut
> 
> From: Kiran Patil <kiran.patil@intel.com>
> 
> set_rss_lut failed due to incorrect vsi_id mask. vsi_id is 10 bit but mask was
> 0x1FF whereas it should be 0x3FF.
> 
> For vsi_num >= 512, FW set_rss_lut has been failing with return code
> EACCESS (VSI ownership issue) because software was providing incorrect
> vsi_num (dropping 10th bit due to incorrect mask) for set_rss_lut admin
> command
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
