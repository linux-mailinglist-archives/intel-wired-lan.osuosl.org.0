Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B658283E48
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Oct 2020 20:28:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 19D6E2050A;
	Mon,  5 Oct 2020 18:28:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HDacS9DKd1NO; Mon,  5 Oct 2020 18:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1128020517;
	Mon,  5 Oct 2020 18:28:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A09D51BF310
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Oct 2020 18:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91C20830FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Oct 2020 18:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Tv36XRSbX-j for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Oct 2020 18:28:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 905B282D8E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Oct 2020 18:28:24 +0000 (UTC)
IronPort-SDR: gOzRZFl7Z08D1AZsVkOVrpc907AqEXI5MQZKCUQ9rZVRaN7fhw/HCXFT08+zhB69HRa4u6C5AF
 ByWSA2PLfwqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151610574"
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="151610574"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP; 05 Oct 2020 11:28:12 -0700
IronPort-SDR: fku0LEffB1jxHSeak5v11Ok3blSopDN3p34t56MZzj/yaSjRynE90/lm1RDcyMNE56Lh7NBFLk
 aOv46JqGBKTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="516226373"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 05 Oct 2020 09:11:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 09:09:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 09:09:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 5 Oct 2020 09:09:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 5 Oct 2020 09:09:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AnY7JK3OLBTDx9wXXYYmQItYhsTqaMmKM8xS9/yzxP16T1ckE0VaAj85ypAN3SN66vBddwcn9W9hEEYkQLpAvbEBLcTFxnHFW2Sv0G/Jl4W4F4ccfd010Qz/e/G4LX2gJvUYIsFbs6V17dBbrNHM+mvhfbR08gaUq22e5rE3AVMwP96Fp7inMr2gXmqrarB7pHMIFK+JMgLYdKpp1rag6XvuqB1mbHr8MAiYcBapJjuMlkvFGCg5360DK3PbIA1qOngrkYI1jZSMXJ5t1SIu+Lat0Fy4Yi+BYVtUEt7bPqj+sWzQRA47Km0tJIANsL+DNR986MfTfHjwrOftR6u4MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M7IN0k/3tX60ZTZCdahgwuVMr9wJNsKerQc8pTQcZos=;
 b=f7Du4ix3VRM9TpO7yy5YPmu3YqUc1v+RZtFzJpulT308es5Tih/AD6zk5Y5eiKswyV4HztGZetVaLPntn+EsEnJ+NYgk1xypS7CZQUA6zpWVgWuiQeBERic+sSUtYeT9h0KVMXP7mG7Nf99QVRYUdf9WXgrYRbfQbT5HjstFhUM2Z5Gx7993MCedeJYZWbHpeuZLu2IJvC78KK3t2lHkVAs/kPtlAN9ruX18aXRdYbTOp363cqKCi7+sj9diVhUd28GhgLs+8qf5LDdhYDd5fFzNDGK1QHmkbRifSWFkokhjwYEy3OYNJ2N6KMdfVzUTanng0YsoZR7pNrOc1i7yTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M7IN0k/3tX60ZTZCdahgwuVMr9wJNsKerQc8pTQcZos=;
 b=cZTsnUzrGK4il1WugB9/eWSsJEElgfZBNtSLLpt7YGJdPuNGcB/8+TYRTSZy8fim52gnvACUg42FlpQTX3bmf9cmBcW9SYs0TwT+a5Nyzwe632w6b2MDQ/38Pz+F7ZnekW3IEtDC3WV+Cx3KZIUREkFbVHW6AdnAZ93sHZaoyK8=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2845.namprd11.prod.outlook.com (2603:10b6:805:5f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.36; Mon, 5 Oct
 2020 16:09:14 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::acc4:9465:7e88:506e%7]) with mapi id 15.20.3433.038; Mon, 5 Oct 2020
 16:09:14 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.16.0
Thread-Index: AQHWjgbNIsll//1d4kO1P7QLTedIIKl1LUOAgBQaaoA=
Date: Mon, 5 Oct 2020 16:09:14 +0000
Message-ID: <24d88c2b9093052aa7fe5c010542f6a51732687c.camel@intel.com>
References: <20200918215024.87809-1-anthony.l.nguyen@intel.com>
 <DM6PR11MB2890A6325CB4C08893503919BC3B0@DM6PR11MB2890.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB2890A6325CB4C08893503919BC3B0@DM6PR11MB2890.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2548b174-f110-46b4-1d11-08d869490146
x-ms-traffictypediagnostic: SN6PR11MB2845:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB28457F09DD8AD78182B0E6AEC60C0@SN6PR11MB2845.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /yjxN67PGUibAuk/nH3vC1/A204pMHaB0qjrdhm8bil0jPJL6vEygd5DtRLAVvArIEyvaBq9zUvjPBienZMS/9iEelXyt8EXYh29GkTWa7GEAFt/H1GKAxNvnndcTut3CLgBJU0R8N2et58engECt/Tpv3koZaNEhcKm/fU79Aw0jvtSFms+NjE3WtwtuNvLHA+gnWi69xfdPH8yTcu6pfSlGmMjMNuzaIUDhuoMxZ7/GdE0tM6hFXpbBmXbBNu1b0D2w0q79MOE94aVXAXl/mRJXkrCB63I+6OugvqO9n6CJNKv4a/3pI2p+PKg55fBTwUiAkmzKn75sOR+jCQCry2fnabJ9L1HtxFCneEj21609Uh3hfApmnt+sD/WBuA3JLz3ITStm3xkUUNtH+/r4IeV0T97dBuqYBk5R23bYfh0Md4n+TpC9RZ0FBqUfQGBP0L99ozwzq3L5DO2B70+Ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(6486002)(8676002)(5660300002)(53546011)(6506007)(966005)(478600001)(15650500001)(36756003)(83380400001)(71200400001)(8936002)(76116006)(91956017)(2616005)(66446008)(66476007)(66946007)(83080400001)(110136005)(186003)(66556008)(64756008)(2906002)(26005)(6512007)(86362001)(316002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nPlcnM04GKl9b10L2Rqnilt4bn0FXiKNCnpcKHnMdV41iATlVr+27F1z9L3b1oEqJX7p9cJJOQRVscWv1WFZSN8irXcorRqHewmeYMjKHT0t/PS1SpETwQEI70zzMTkNIfPcIwfWrnPLHlU0//0D0PkaMAgkPzvbJnudx4ZURRd8gst+qt2uIiyoXIFV0zflpxVi7P2mIpMXfOD5tnyjyo0r3SZEHfBauUx6Sjw9F0xDuI3ldMa0EJFG2tlaIMhUKQRCtRS65KhAHv0nRf35U09VKqPWDb56yGI5cqqypn3BV4qHk9vpW4FdpQd8AtCrwDao2CMfoNMcv5CmUfX4/nJZlpIR0rPDTOy/pxEMdjstRHkek4tLxKbJ/gkVPjmdFm8/a0P+Asj9Q7J+K9vzQWwvm7zpzSCUpKj1NJeANTKzQhbNACKnBlQw4jEgD+NfindeKM1sTqApq4dgLV2fZs7tMerGbcmRNDGNncvkipiYSuOQtyyfYuy+GjboISeniY8QEjHAPuBL8/Fz9mGP7WxBSP+MfErpBDW7WuLaJ9jRQUsBSoMOiaKrA2o6MhXKvVcIi724aoTs3EuVhDQM6d5ZuZMHMBhUnVssXwQ1/UgepBeF2RE0Hr+DbCQdXvlxuY6zPHb9+TlF1vVd5WNShA==
Content-ID: <1FDE9E25C9C54645AC47F3891C758798@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2548b174-f110-46b4-1d11-08d869490146
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2020 16:09:14.7006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YeS2uLgfzaTT12jT32LdWlq7dxU5vt63j/FpoUBb/lLTcfqRUudCkycd9hCKIq5uQKW8sHhuBxC0EQYxAtcE3pB5yO4vEsBF3n9O1yNRjjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2845
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [linux-firmware] ice: update package file to
 1.3.16.0
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

On Tue, 2020-09-22 at 21:09 +0000, Brown, Aaron F wrote:
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > Behalf Of
> > Tony Nguyen
> > Sent: Friday, September 18, 2020 2:50 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [linux-firmware] ice: update package
> > file to 1.3.16.0
> > 
> > Update the package file and WHENCE entry for the ice driver to
> > version
> > 1.3.16.0.
> > 
> > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > ---
> >  WHENCE                                        |   4 ++--
> >  .../ddp/{ice-1.3.4.0.pkg => ice-1.3.16.0.pkg} | Bin 577796 ->
> > 659716 bytes
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >  rename intel/ice/ddp/{ice-1.3.4.0.pkg => ice-1.3.16.0.pkg} (52%)
> > 
> > diff --git a/WHENCE b/WHENCE
> > index 0bdb19ca938e..8b92bd39d735 100644
> > --- a/WHENCE
> > +++ b/WHENCE
> > @@ -5062,8 +5062,8 @@ Licence: Redistributable. See
> > LICENSE.amlogic_vdec
> > for details.
> > 
> >  Driver: ice - Intel(R) Ethernet Connection E800 Series
> > 
> > -File: intel/ice/ddp/ice-1.3.4.0.pkg
> > -Link: intel/ice/ddp/ice.pkg -> ice-1.3.4.0.pkg
> > +File: intel/ice/ddp/ice-1.3.16.0.pkg
> > +Link: intel/ice/ddp/ice.pkg -> ice-1.3.16.0.pkg
> 
> I see the link being created in the patch, however I am not seeing it
> in the file structure when I pull the kernel and check the
> firmware/intel/ddp directory.  Everything else seems to work.  The
> ddp package is there and a diff shows me it is the same ice-
> 1.3.16.0.pkg we have been using internally.  A `copy-firmware
> /lib/firmware/` command runs the script and places the new ddp
> package in the correct directory, but no link to the file is
> created.  The /lib/firmware directory still has a link to the old
> firmware and that older firmware still gets loaded unless I go in and
> move the link by hand.
> 
> After moving the link to point to the new ddp package it loads and
> functions as expected.

Hi Aaron,

There was a patch accepted [1] that changes the behavior to ensure the
symlink is updated. If you rebase, you should get patch that properly
updates the symlink.

Thanks,
Tony

[1] https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-
firmware.git/commit/?id=c1bef9e01060f157f95496f0cbd4edb7b68a3dc8

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
