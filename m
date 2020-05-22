Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B421DF058
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 22:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83E72204C4;
	Fri, 22 May 2020 20:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKnZ94+8aK8L; Fri, 22 May 2020 20:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F25A20502;
	Fri, 22 May 2020 20:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C3D001BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B7EB1204C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S10fY3Yz+njd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 May 2020 20:07:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id B18C620437
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 May 2020 20:07:30 +0000 (UTC)
IronPort-SDR: bhIHeEdIEwNFDFFXTzQ2uQpaeEuZy0OJbOvyQMllPyopBl5G2Z6JrWKRByfo31i82zCvNa2k+h
 UoA0ODZoi2qg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2020 13:07:30 -0700
IronPort-SDR: g/eXDXM6cwtwazNd+1aYswV+ZbgWTyA8/op0hmRbaoQ/G4DMcwY9sb6aW5lwf5KQJXZCgtUzun
 8RJLq/36beKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,422,1583222400"; d="scan'208";a="290213472"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 22 May 2020 13:07:30 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 22 May 2020 13:07:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 22 May 2020 13:07:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IQxcS3I832LVuxvGM5AtbJIV41MSrDtW31KpdfeZhDvlkzQBZGzfcus/b/dfsp3kdQtBrYVpmvPjkH9R0bH8pYRuim6d/Kwu4qmb7EsNG4tQF+eEnnN4DIBp/qYPhvUYV3pfOViKcx6jAh9E04PttbaBBHbgZVzjno56Gc7Qy3OxQIhHvf4bfE4M1UI4KLlOuPr5ER/VxQ1neHsqwfY2If6tUgqAGNb1/sAVttyV90M5LWkV/nNzfqDIuOdU/H3nJsTbBoXK7TwJKjlpbf8u3cnE0bqdxLC6qwhpWB7oqmfjXiwnN07t+cogHaeu5fyVtmhLKD10QDXmjsLfBkQ7Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YuuaPBtXP15tv8uhvOEwZgKABXI3cofmV/PV2gLeiWY=;
 b=HrgxXX3LbBozfjtgniz/gxTAPUfoUBYzzmeKcBflGFi8IyZ6NWtLac9xVcWATZ5JeXoAMiXlsnhwGvF09drYBDP5FS3LX15x2ikxWZjsAxebs6aOvaFGhdFdSkPDrWu933ZdnIJtjkr8u4N5TaXYAzWL8RwgOsyZr03gZbtYWOPe+Zx2yqGRZHEnKLdGfYgk8wH8ceu00s+1mvmQBYASY0Fr5fC5FAd3CckGWwDpocIhf61/YInFbw80MPLTUHqaGlFFXZQvcrkTs4/YbAgO9Zr2y4Y5RH7xWdnWKka9v9iPPg2W+RmQWoaDr/9RfDXpMDsdgFHfqVGStbEFE8D1OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YuuaPBtXP15tv8uhvOEwZgKABXI3cofmV/PV2gLeiWY=;
 b=nmUnpdB5r0o0gEmeNZraNC9omfLYxLK4fVh743Zjgz3AQ/V7de7IepAcgjGVMYlp22hH6YJRIojuLBNic32VQS1HSWVoZzKVfK1X9lvFkKbQyp9NQS/4DFVpGG2XgfG/nMhopV+KvVEoclo7wtkyHf2Yn/ygzC/4mLWtlAh4WrM=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1242.namprd11.prod.outlook.com (2603:10b6:3:14::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27; Fri, 22 May 2020 20:07:27 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3021.027; Fri, 22 May 2020
 20:07:27 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S43 12/15] ice: fix MAC write command
Thread-Index: AQHWKxqIako4OaybrUSSbuwxZmlr26i0kvKg
Date: Fri, 22 May 2020 20:07:27 +0000
Message-ID: <DM5PR11MB1659BE271364BF690014B3A98CB40@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
 <20200516003644.4658-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516003644.4658-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d478389-9828-4992-5e83-08d7fe8bc030
x-ms-traffictypediagnostic: DM5PR11MB1242:
x-microsoft-antispam-prvs: <DM5PR11MB124233406C205BE26BABE4748CB40@DM5PR11MB1242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04111BAC64
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SpTj1Sjar0ZGbAaa9dt9LzomlV/TAHoz8QnkrD1OTQ2W6Ile+SIigbycBnYCmMJwVpKrIESnPWowrlOQTn3akPDUOnhZZ5CnkNjN3sZZvNHUdz5CrEi8ysoxeOxxW1x5ZxZF9T/8JzzhNsYi2t7bkvEP7c52KasShJYRkO8AMQaVRjeGo1JLKk1s4Yey9J1HfqNCH7KtuSfq9AgkOk7ykrFmr8VRHe+mZ66Sy3tmaAk36TzTgcELX8HsQsABr49vnTGXCz8FRY8sxutu2EclvLLJbapCXS2Po1kmk8tPxDJp8yq0T4dPLXGxDHmllqDZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(7696005)(71200400001)(8676002)(64756008)(66476007)(66556008)(6916009)(53546011)(86362001)(66946007)(66446008)(52536014)(5660300002)(186003)(76116006)(2906002)(6506007)(26005)(478600001)(4744005)(316002)(9686003)(33656002)(8936002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ky1phVlmenv5CTUzhBS8qGWNYhd4CLKSR4uZztr5LXkJO1WSNQCgpPWx56rCHUPoTYFT0/dtu6Ne7Kk+iQ3X0/q3qyEZRLJVbJ93DpzARZhAaeQB7KBpS0oSUEriaM8ZYY572YhsWVdcvhoItJsc1YC2a38BtOZas09UXlod02hMlj2cZni+n3bUHRnTMU+6i6HpjrZZbfAcb2x0rDSXE+14HdL5MQBSNEbhv/TvfwSGDdqWkHaSDe1SUwYIQt0Rk4s5/2Xcx2nHnDz9wS1i+4YP3NKxjGZ+nN4e8WArtTzS6XU9ND8dwguElET+lV85yeblAJOGJWR5Ni29jl6NJOKS/a9Jksq/DQFimDIUe7xCJkS1vlikPTs+deQJV3bAox0fLk7ztSdZSCIe9Panc09/n0BclRZavnCxG7M5K5qPDEpCF7bvByLvYEuk8FHV5InxTEQtT82S3oqt/RLTYXy9H+wdGCaUl5boF366ZJDi3QtoJFQhuKSnsps9bPZC
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d478389-9828-4992-5e83-08d7fe8bc030
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2020 20:07:27.2580 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DXTC64hO44va1qITTKFGqqyyk84bcUQGCrliB/FAUg0dZd3gD1RQBB7GcACO49x/uRRGbdCYpbDxATDUrPonffcDxbjykjj1G44gjgWM/Nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1242
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S43 12/15] ice: fix MAC write command
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
> Sent: Friday, May 15, 2020 5:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S43 12/15] ice: fix MAC write command
> 
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> The manage MAC write command was implemented in an overly complex
> way that actually didn't work, as it wasn't symmetric to the manage MAC
> read command, and was feeding bytes out of order to the firmware. Fix the
> implementation by just using a simple array to represent the MAC address
> when it is being written via firmware command.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 10 ++++------
>  drivers/net/ethernet/intel/ice/ice_common.c     |  5 +----
>  2 files changed, 5 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
