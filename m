Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88C3934B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 19:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C56C1402D2;
	Thu, 27 May 2021 17:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3uSCSALL5EzJ; Thu, 27 May 2021 17:25:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C87B24029B;
	Thu, 27 May 2021 17:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2441BF341
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6AC7683DF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Ts-VSVvalvb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 17:25:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4BDB783B4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 17:25:28 +0000 (UTC)
IronPort-SDR: qSkkjkJZ3Bk5jPZJYWDbvQ6ZinBqG34cBTzLNjnVDHeufIv3zYJrFUenNv8uMcbl7n2O0ajOY/
 PH1ICaKIM/GQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202557507"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="202557507"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:23:41 -0700
IronPort-SDR: 6MB4m4Wr7Rw8CN5KDrxkaMFRt8Ukb1RGtsmqTr+N1rLYLY9ZnseIB11ofd/gWdiK5UBcec+9nA
 GmWmlCQXcaKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="465462169"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2021 10:23:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 27 May 2021 10:23:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 27 May 2021 10:23:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 27 May 2021 10:23:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XK6dVDC6LeOe1HAWjMmvRYiu6r3qXMG6E3yNkq9IWhIC7tY8BqLsaMqSJa/O3JeD9LUbwA4YwdCasSIbhon4oX5ga6FGVdPeMcXYql3NS6hajZsgDWsLM4FG7TJUs85EKEeinP0iRlLjYVrH8znKOWhqU/Ma7sylcNo+fqPDsQyAPtbQpPEnuAscCPmrqFUqy0YICtPZOgs8GqGKHGd7C7lbFx/WFUfhlaJFx3cLqvkJY9t1Q0v3a7iIkDMGG7Ybem9WOBSQHiudnkBPdTByvr6H+Vjqa9cCj5RsWaRzEuh8nB7ugLtkrfidiWH9wvp1r/jMs/pvBe3GB95bN2HGJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61M/4arLuYZSf73l80+4ATiwoReYraiAAkpFq9I7Rs0=;
 b=cAnSP4Z6TfybTQ0aCO3zjpau6MILYYu6rtP+/VbhNDWGFRzoSNMIY6qpz4Ht2D7jEy1NQuJzA5hfUrS+U7Euy0b/vE6JuaYP1fIAf4GLtQoHtp+zSj37Gh/x2ga/Pyqlgm6NLjw2d/InQNV7/URPCgWAZXDXYDs8x+KDyBAKbu33ZDDERFLCtPzQzZjnpxa8l5RUKLiNzUW088GixYHxxch+feqK0xhjNew8JG2MfYcwPbCsp5gb0F1PiXrN5R+k51vS3D1ACMmWmcGDkHnYgfErhqgsin62n4MDA1cqWjVp31Q411kjv8gQurNJ2PT/S7pG2TzDH9oVafSDm5rSNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61M/4arLuYZSf73l80+4ATiwoReYraiAAkpFq9I7Rs0=;
 b=bpyNbjXGs2Dzlvu80J4i5fZWjX3YSF51/Q96Y8jIHfN56L1BYezWTWdcb2xTaAy0QqY+pfNHRb6h2ZHOtBlPIvIzRtH/NOJerbCnFIVmlsAv2j20/Q3MaKesRIkIl2xRxoOdJV4mDFi052ETqMJcHrdn1iSkSk0HG7r+Ylbe0D4=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1357.namprd11.prod.outlook.com (2603:10b6:300:2b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Thu, 27 May
 2021 17:23:38 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4173.020; Thu, 27 May 2021
 17:23:38 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/8] ice: add support for set/get of
 driver-stored firmware parameters
Thread-Index: AQHXTZgesenD943iHEOhYnLUdZV+Uar3nsfw
Date: Thu, 27 May 2021 17:23:38 +0000
Message-ID: <CO1PR11MB5105330ACDFA533E6CA51678FA239@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210520164850.1884656-1-jacob.e.keller@intel.com>
 <20210520164850.1884656-4-jacob.e.keller@intel.com>
In-Reply-To: <20210520164850.1884656-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d65e0a4-87de-4a7f-7cd9-08d921342a65
x-ms-traffictypediagnostic: MWHPR11MB1357:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13578B187674EBC83F69C9AAFA239@MWHPR11MB1357.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rk2/K4TiRw2SDSGWeN0ZmT/AFySYOi9JJ2InMtoyyT9NVOEOzZvt0V9yUhbDeonF8MGxb2kJg+EAirjG/J3T2bdFGNK5dHdkiguPY0JcVhLJp0a8FH5Cji37CT2BoPRX7aA2974CkykN8+gNhdnU3Su4PrD4Qe9SbLRI0QvUi/BVlJUQU99AYFx7JDrzyy8V6Ogv6InV6+GhSFSGJEl9E4o12xF+C67AaqO6AgpVhQgH+I3IDxk7GkTm6qsKBg5Rht0QvUpKuCfGd5dXkYZJZS9cCEAhwoEg1TSzA/Fr39u2RSxLhV39ESHDnWNJ9pMWicIlgMo2BUs7z2WbcYD+FyrmGjaDt9zUto1rGwq8rOTMgn42eZRiwwMds3vsgoKfZRyYHtly5rtEtsAO84Yz6DD7hTTodQKx6+CMbFaQI5hBEQaeSIWFIcxEOSCMYRWRFVqyaX4TQUj3IRzTdcyO+o0f0OT5oAJJDwe76N/9XW+ZJiYe3UQfjGTIzPjYV+L/z8ItVODDdJIBZWxZxK1mjwrsIJupFTOmNvufh85W9LPfL5dAdgqF9CGERxGvCKLFqP2OzkH9BBGcaRirupI3Zi1I58YjbY6a06lvlRKk9II=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(39860400002)(396003)(136003)(366004)(376002)(2906002)(5660300002)(52536014)(55016002)(186003)(9686003)(122000001)(76116006)(66446008)(66476007)(66556008)(66946007)(107886003)(83380400001)(33656002)(8936002)(8676002)(26005)(316002)(110136005)(4326008)(64756008)(478600001)(7696005)(38100700002)(71200400001)(53546011)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?iAKZpmIZs/XGYMuHILI4ImyOINLmdThi18TosRQpLmr+nZvrWkjR0egI4m79?=
 =?us-ascii?Q?SDIw7v8b7X2TMAzl8P/T2CZipIiM6TF7Zy24BkUmu66YkCKHOtwgdwO7UoiS?=
 =?us-ascii?Q?TVG8mDtRWY4IrBwkN0nTfIHBWxuVY9M3GMEhHsikFAtuOqV+VIa6ztYHEZ+F?=
 =?us-ascii?Q?lv3ytB74oAe7Mq65SGt2IvtI0LsvgqWJBknXHfqNrFPiuXU7ZbOohYBbZ02l?=
 =?us-ascii?Q?jf1oVfOcblVx3EOcOHnBXNatGcUwgMqHLRILttLfmuHK+Em+F5vXa1t5+ymI?=
 =?us-ascii?Q?DgOx7fdTxMboDSTL+8WER7lAjiM2ayXav8rtB2tKNIAUGTzCXxypy0BJJMNH?=
 =?us-ascii?Q?0nIPIDizcxBLY6W4HbvuiJdf7pyRubnfVvbBE9DsrVJDB/ZMNSBUNFnz+Xw8?=
 =?us-ascii?Q?EUjDWFnmNEL36HFXwoA1DQuCN+oQeJbdcwU6mlkP3EUH/Db6kadcKJZBIljL?=
 =?us-ascii?Q?s4rQPCrmDJGN6jyd/TR/lbyc++xD25mBSFQno7jUVrUakIvZrxttt+TRMbpi?=
 =?us-ascii?Q?JlXGQUIls5RbEZ1qzJUJ3ONj+oPOKWtYXvdc2wyDKTue5d+/N7zqoaWNMLfN?=
 =?us-ascii?Q?JYVq64a4VXVmIcHuRw1YgzsZAWWkv5s4x9BDuaH9DoaZKDr3Doct1/iQDU+a?=
 =?us-ascii?Q?oU7HC++DTyfwoHRbYjBeMy/uTLgBMPxVm7kH48BGaOj1bIGX49BDoSVmWHsD?=
 =?us-ascii?Q?75pmwp80inqPRfEWMHT/RC3h2Y7xSIiWIEiFIkEDXFKz7FGi5wPYHqYDthUS?=
 =?us-ascii?Q?pyEazPEGsnGcEcpFMsLwQz1Qq9+4XLe5sxOnV/+ezZS5S9F6+uIgnTXAJuju?=
 =?us-ascii?Q?m6wnwTho//DwhUMVny97sLJ0bCZc/MzRYqsJgNiJiREDmlKPoIT7/j06HFDY?=
 =?us-ascii?Q?Gr+AQJZDf0o6z/qOmCb4R26NLxX4sazslKxXGPcNVfrY2TzmExruiL1QjYFU?=
 =?us-ascii?Q?RfU01KmkJ1qdmu6q+kubNyq8YK7g/vON34p464M8zCgbxXXeMMAQRli4Pl7h?=
 =?us-ascii?Q?5vKOhBq0EXbbfe+wSnJWAFbauFtaYOAiPzuH+s3LzS+7hxvvJE6+84w2WSLF?=
 =?us-ascii?Q?WF8l/J9zGeKH5Jmz/tnpOfADFhGFeGDZkmeVStXFxNUFSR41DEy3f1kf9wRU?=
 =?us-ascii?Q?vWyJKY/x6b7y/FSLGYI4m0Zb6ILoBbUDvSJnW5vLumXFb8q2FRzQ+8u9CL8U?=
 =?us-ascii?Q?5wGzHQZWV6IjSIYPjwxxCQ3citQICJELchvMDxXlWirU3zYYHR092hOdH4WB?=
 =?us-ascii?Q?8JofH+Z1T6hjJlBvHAgCE4VpLritcF8kd/Y8Y07AoHCVoDrbrSn7Rq220rY3?=
 =?us-ascii?Q?T8OxXN6dOtJ3H5M5bCGENu+P?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d65e0a4-87de-4a7f-7cd9-08d921342a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 17:23:38.1303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 976OdRnkDsXV8IIOhr6aVQpaG+bL+nnoK/8N2X3fC/8TV6cYHYwLTzt/cx4HbhrdxjCvpxV92OChq2ywQ8m9N5k7u5xMq2tqDLNr8WsYBuY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/8] ice: add support for set/get of
 driver-stored firmware parameters
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
Cc: "Lion, Sean" <sean.lion@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, May 20, 2021 9:49 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Lion, Sean <sean.lion@intel.com>
> Subject: [Intel-wired-lan] [PATCH 3/8] ice: add support for set/get of driver-
> stored firmware parameters
> 
> Depending on the device configuration, the ice hardware may share the PTP
> hardware clock timer between multiple PFs. Each PF is informed by firmware
> during initialization of the PTP timer association.
> 
> When bringing up PTP, only the PFs which own the timer shall allocate a PTP
> hardware clock. Other PFs associated with that timer must report the correct
> PTP clock index in order to allow userspace software the ability to know
> which ports are connected to the same clock.
> 
> To support this, the firmware has driver shared parameters. These
> parameters enable one PF to write the clock index into firmware, and have
> other PFs read the associated value out. This enables the driver to have only
> a single PF allocate and control the device timer registers, while other PFs
> associated with that timer can report the correct clock in the
> ETHTOOL_GET_TS_INFO report.
> 
> Add support for the necessary admin queue commands to enable reading
> and writing of the driver shared parameters. This will be used in a future
> change to enable sharing the PTP clock index between PF drivers.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 27 +++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 75
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
>  3 files changed, 108 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
