Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4055A1AE9B8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2020 06:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF3BA8826F;
	Sat, 18 Apr 2020 04:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id phYFwIdb2ChY; Sat, 18 Apr 2020 04:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BF5488296;
	Sat, 18 Apr 2020 04:00:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB1A81BF337
 for <intel-wired-lan@osuosl.org>; Sat, 18 Apr 2020 04:00:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E33A58826F
 for <intel-wired-lan@osuosl.org>; Sat, 18 Apr 2020 04:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kELoMTaR8pbF for <intel-wired-lan@osuosl.org>;
 Sat, 18 Apr 2020 04:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3081C8823A
 for <intel-wired-lan@osuosl.org>; Sat, 18 Apr 2020 04:00:23 +0000 (UTC)
IronPort-SDR: ZB+2e2RcDwLmRMPEmTINeeIWMDAqoF2pgwiq96hweNYtdmMO3cDP3ppXOu5Ntvib57VldUkG94
 eHe8K23oZwyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 21:00:22 -0700
IronPort-SDR: /2MfVCgtd68cLjIn8uW3DfjtDdfCt2lGNkl5RHHqrjPE8Y0hUQCfjOdFzeBumVdItlO/beRb+B
 ge3h9LUpuWCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,397,1580803200"; d="scan'208";a="254402494"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2020 21:00:22 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 21:00:21 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 21:00:21 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.52) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 17 Apr 2020 21:00:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LobDnMlrQxqgz7hvro5PzPDhlIPUBfmNP9iRhJmXiKyLVPGlfEdGUuWhzRYOnWCv383voHGhaRelyhW7oIaRZTQ3Dr5jzRnza03UAMrtMt2B23/0thQRSdDjEWIFoGDkNi4r1hcecIpJkXWt05r8REkW6WdQEGEgP6bYGTOZRVCdrhOhm7mrDLal9KAMXrPQLJXPbU3lVEOqPs8gFyO/xb44ahkA3E8SVHac5/deDxi0dCqCqEFgSTNlD+/9oLGFs0Vqfohu7rM7IxHJmgVK++RjBoNxNoiR7AtPl0quPkhAtjR1Y7c5NiumBg+ik4QHJmr/cmlngSPhv6Y7kNOrkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F7Eo4GUW/yw3Ua7iVOQhZFIgCdI0vXnatZNGM9Unqog=;
 b=Yr8AESGBCeG8A+uwhAarc3uWhSQjvBtZQdvAwoRMmArwiz2/3u4RaSbF8igQAwF0Rpsp5LH38yMs4R09vSdnVzcCPJr9XJAMCNMq1Y21Mmv+X78SCMQXqZiGeWzhJzrpe4cIUic4sA5lajExfXAbbtIiPGYb7eOq3q0vUBGV+ngzZHkayIUBKrW7bEa8KphDe8Vz2kxsGoaqL7/HDvdn5c7VupN1riTH++BYdLX1frOeqZFSYUngicZCrhVptY3rEpZS7TCFrwCasxAnT7pbFnTVHzOP/xWkZinKlFPLOaMhRKp0D7+t3Q324SIr3MtRwAphFRGbeY0cxjRZX3s+kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F7Eo4GUW/yw3Ua7iVOQhZFIgCdI0vXnatZNGM9Unqog=;
 b=ZeC3LIzqnlek8ZQ/FtzlG50/YKcvY7lh037YyBWHNZaMqx5dqToBbktxEN8RPXebJAMP0JwEXx/9zul9Utj9QyAlPVYcVk5hv2Njh7SsWWLe0Gyi3SGlXqNqcLvhKP/T4JwO2WvQ3RVGOJc3Rpl6KBCV4sng1c8qEX7Yhmek+Wg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3434.namprd11.prod.outlook.com (2603:10b6:5:70::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.17; Sat, 18 Apr 2020 04:00:17 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2900.030; Sat, 18 Apr 2020
 04:00:17 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: fix S0ix flows for cable
 connected case
Thread-Index: AQHV+GVjdS8uZtRBYUqKmEbztUPeO6h+eqgA
Date: Sat, 18 Apr 2020 04:00:17 +0000
Message-ID: <DM6PR11MB28902EB7C6FF2F8818ADB21ABCD60@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200312115707.6534-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200312115707.6534-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f68862e2-f971-451a-4808-08d7e34d0182
x-ms-traffictypediagnostic: DM6PR11MB3434:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB34345387E659EFBFF45F397DBCD60@DM6PR11MB3434.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(39860400002)(136003)(346002)(376002)(366004)(396003)(71200400001)(2906002)(81156014)(76116006)(66946007)(64756008)(66446008)(66556008)(66476007)(8676002)(8936002)(186003)(86362001)(26005)(5660300002)(4744005)(110136005)(33656002)(316002)(9686003)(55016002)(6506007)(53546011)(478600001)(7696005)(52536014)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KK7sNwoHPwatKHwmRtqG8DBnM5l7qmc4mRXagXVAjpO6EeiEar5oxOmul0c74fp7IusDO1w3UE6s5H7KaPoXTgUrkFa+QL3hN+/CAckPloBZ+LIuU4R+pGusajip+sv5mjbrnK/A18v4ZTHqqYQ4ZBUYLKc3+owvD8duRhASUuX3zVBXR8YnCtxUl7kaMEnvBs5fJwEFIjt8VLf1SUh9tRxErrINqN9M7LkxbUrnIjuRT75R9v8hxApwvFyanOR30ckvG/kxpsHMX6yPs3UWQbDh5tGHEd7WusfPGP59650D2+bt7ulscdN5rAw7J9hwr9/BqktJKRqWoZ9UEAltlV0RyZ6wzfEQE6zBx4OLpYeMoUX5weLCbNKRh7I+PS6SpPbXGmJ9k5mjrbt02whQ3ihd/RB2rnwAn9YDBhzDaVuQE/N0Ine3qr1tMBVTvNPoj8EIz4jqi8DARMhHFcoxJcOj4+DFHi6t2QggX7WFtN06U1ENVychhHdLwjZiQiHm
x-ms-exchange-antispam-messagedata: 6ARXTWybNWNWH1aP51epHeZRBFm1NO6tY/Dl0PCDEckJHtQ2PzzWiNUAURDwCzsDJnf6TdmDA1xPVM6EhgUHDEFZH3jqsfz1irOeIlY3ksBi7Wosvkkof5Jx8A6NDSCtbVC6UwBm/IwK8bXhGBiF5A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f68862e2-f971-451a-4808-08d7e34d0182
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 04:00:17.1278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XJgXLwozbHUPC4U31ScKybYiyGq01qkB+GsOfaBghXRYax+83KPGeev4xTZVhXp7BvjbfW4WnNQpXcX/j0ulFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3434
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: fix S0ix flows for cable
 connected case
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
> Vitaly Lifshits
> Sent: Thursday, March 12, 2020 4:57 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1] e1000e: fix S0ix flows for cable
> connected case
> 
> Added a fix to S0ix entry and exit flows for TGP and above
> MAC types, to the case when the ethernet cable is connected
> and the link is up. With that the system is able to reach
> SLP_S0 when going to freeze power state.
> 
> Change-type: ImplementationChange
> Title: e1000e: fix S0ix flows for cable connected case
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 54
> ++++++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/e1000e/regs.h   |  3 ++
>  2 files changed, 57 insertions(+)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
