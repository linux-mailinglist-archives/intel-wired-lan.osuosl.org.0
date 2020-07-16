Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A93EE222A5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6091E87335;
	Thu, 16 Jul 2020 17:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5XKMgmRTYAA; Thu, 16 Jul 2020 17:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B823787357;
	Thu, 16 Jul 2020 17:48:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDA641BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B164722882
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyWbzYrqxY+2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:48:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id B9096204A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:44 +0000 (UTC)
IronPort-SDR: kPgCC2n04b0oinsXTV6Z7UGOx1rmAkJv8mdjBqR8o8CAXQ/59N1ooDqAwUaPwqI6WcqCSawdEk
 wKv8+ET4DcEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="146963671"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="146963671"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:48:44 -0700
IronPort-SDR: UlmHhgvJzbunK84vS4D3/WD9kEIvmAEG23Pg+9dhQDWvhorSq9dtM4YoqxrrwfI4gkqpRau35U
 0arMMLA1OCZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300312842"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga002.jf.intel.com with ESMTP; 16 Jul 2020 10:48:44 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:48:44 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:48:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:48:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxuYDy5CAMxb4RWJgUk2Uwi9Bmm2FbL6C+DkKMXcC1K1VpWt+rxYk2IROUz44djnAxPCGeHMt57VBqlwbtzqkl8+wji1EO9148KBI63b3vHDC4Azh/DxaWa8HaYLdvEKgP+dEca6pRgtUQYuZ2BVTgACn5Z0+l5/l7SSpPwEhfTVWH+HsJOgnwZDj+vWswGBczSRTPy5Pywp6p3dgLXAUCPKuOG1tBn4q+RB2tIljMOq785pI8d8dIEJpL4TytunipQkzCtpiPo6KPMuD2mItIFEkXaRKQtc9UjFgx31mAwe7P5CamZWViqJ2v7iGrvuSrXeIG1NPLFK5wPeNZ5iqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3aSgrlaqNJmRBN6bPFBo0jaKxnNzM9eLy47F6mjbwuA=;
 b=XpABrz4I29OZeLzVTsJfk070Gpt7C26j6nXFBQCc8WouhLZhGUieFweWBPRuMWb9BKJ3Za7YQUHbY1SbhYZS+YLbNi2lO7xLY1t3o1qHMHr0pkvFwxOKYVVbiIZ9oM3HU3sSEFUVEkGOwThTxbznJVtRxS27DvsN0tumxEhYsKTNjH0HFWkXIos6GH5c+g7dyX2bWksOjzCB3vns6KYNzHE1QkcHmgHiuROnl/YDJMUqQtw/4jCkgLEuaLXtEcXNM0vR2H+Qnm/H/oX56hHAjjfj/QH8UXix003p5uJi9IYhwJ0C2rT6UeP4QYcpxaCHmGC339erJqyOJczraIg8VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3aSgrlaqNJmRBN6bPFBo0jaKxnNzM9eLy47F6mjbwuA=;
 b=x9ncrJoju5KY56R3PMjrRSFo75vJS/jAZL2ucA3xs5DjO7b/FEJj+uLwl4wK6+oQc+avFT1zmrnEH66xULvQQM73huv9CLKsJ5XPso3GMfeMuivRiKP+XTkwrF2xy/3I7gCzALk28RpithSWFBdiwCFK72Ak1ykNlxS/TCx0eiM=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1459.namprd11.prod.outlook.com
 (2603:10b6:405:a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Thu, 16 Jul
 2020 17:48:37 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:48:37 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 14/15] ice: disable no longer
 needed workaround for FW logging
Thread-Index: AQHWWVg9VpHcDvsrcEiUQK2HvkfOIqkKf+jA
Date: Thu, 16 Jul 2020 17:48:37 +0000
Message-ID: <BN6PR1101MB2145494CA6676E7DF6160C788C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-14-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 4850a16b-8d8e-42b2-b9f2-08d829b077a8
x-ms-traffictypediagnostic: BN6PR11MB1459:
x-microsoft-antispam-prvs: <BN6PR11MB1459EFEE080117D9D95F022A8C7F0@BN6PR11MB1459.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y22AxQbdJI4hNheEXKkqAeDL9BQZF0JDqCg+tKZj3tOeIjxLQcEwd0UsMQJXWjd+6xSHhLjTpluOVEfgN+Oj8s3aAy3cpSkxmtCxzI65w1+w9o5wWCGoXg+J2E/6QdRlYbzWJ33RCowvGSW1ofUnrBSW3dRYRAuOExEQLRFR7SxO21mowPmqZV6nlRVmU1f4Q7diMSsGCFNO/xbX829O2JQfiWmiwlY431iLiD7DGn1Y5RId5HfReYugL88OcEOoXmFm3BzwiLutj8mdyEL4swXpD7UPra5jzkxhHp0bVJ46uTh+yPf6XIjEWUs3nZSj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(26005)(7696005)(9686003)(55016002)(53546011)(316002)(71200400001)(2906002)(8936002)(8676002)(66476007)(5660300002)(64756008)(6916009)(66556008)(6506007)(186003)(83380400001)(86362001)(76116006)(66446008)(66946007)(4744005)(33656002)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: DJTZtK5LerfcxKtRpk4Li4wyya998d4cExW4XKj25vLrS8qY3ZV7AaNbhwXA6E+GZ9/EDFuTU1dfvbGl3Nz6WewEGi46+uEYrGZTsNGqO2yWz4bVSVldZc9JZyRc62NHP4s4vKDE7h35CIsJnYPlv3ZBvzPizxt6SsDIi+b43DELEEdH1Sj+nuPevLRfKbg8xHeHRnZO84zrIWeYlU4+rS4/KGCIHFyrYE+wHuNIwC/exQTTsGMsAK91BQORz/bKmw4MudluFPnNBHM8kAZTTA1XnyDF0TTQd+/odKP1A4R2SyNxApKXdsecMX1r8+fNaGzUFGldbi7oE/V2smm+uX3Fo1aPMCCL+w5crAN5qzr3iJwh3eqQP/oLKm89AVDtbV5wSLbSNqJdaHxQJup3FkXWMxfrXPhbcMC9dfB+z0SSVxVbADjm9Dv/643Y38beNxP+gn31W4ylFK2cSfNCQp1p8/jzp3+Oo3JfbdInoAE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4850a16b-8d8e-42b2-b9f2-08d829b077a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:48:37.0784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9cxiH+c/mdphPQJL6JajEJEtPBPRLV4q40JTSMm/cJE768i8cowFED+sJW6lRGXBouq+aoxoKQkZNm59IPq4rsRUKSlB2RwIfhyNX4FyZ8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 14/15] ice: disable no longer
 needed workaround for FW logging
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 14/15] ice: disable no longer needed
> workaround for FW logging
> 
> From: Ben Shelton <benjamin.h.shelton@intel.com>
> 
> For the FW logging info AQ command, we currently set the ICE_AQ_FLAG_RD
> in order to work around a FW issue. This issue has been fixed so remove the
> workaround.
> 
> Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 --
>  1 file changed, 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
