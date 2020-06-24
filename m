Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D4E206DA3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 09:29:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9450F88378;
	Wed, 24 Jun 2020 07:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBjV25cUY9nn; Wed, 24 Jun 2020 07:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD85186E68;
	Wed, 24 Jun 2020 07:29:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FE611BF861
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18AFA2046D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXnshIlIUeDL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 07:29:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B78B203D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 07:29:39 +0000 (UTC)
IronPort-SDR: zBxC2KyGiVMiF3nZSGCed1OsavlLA9DQ3IsI+8LMvm6Frx9Zro1zjXt82l9J3loaj5ULRlEDau
 b3dCSTUVHZ4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="145871250"
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="145871250"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 00:29:38 -0700
IronPort-SDR: qnaUEpMv9jREhIRqOU6yhE6cT+JIzO33Y5jqfdM6YTAGkpgqF7EftcZlKG7wfhANLkUtof1wfB
 lp1wXCe4McTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,274,1589266800"; d="scan'208";a="293453928"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga002.jf.intel.com with ESMTP; 24 Jun 2020 00:29:36 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:29:19 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:29:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jun 2020 00:29:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RiqLM/RONms48XmbqgSaYyZXTWIcKApUFL5T5U02Qv8NXpIusMl71vgc/ZKL0Rvnz/xhyBULIT4sW0eBbHlLC3nLYQ7TuhbVJULdDmzTmr6mGC6w2RBRCVQq2+N+GxDbI+0Jzohx2Sc4Vq0fDfwqdmplw9ARyYJ/I78dv5wpGWUFJQvIuqeli6UOYr1+C0iTVtnwTZ8YUxsucbqQ4RBnAysIqo3NgBe3qoQl/LguQJUJkVyLYMgA3nY8qtjncMTVeY71bDgutbMOplo9O6C3RVThqw/bJIlv7EtBpO+e0ylX0L2SHS8S8pHqdqCCT71/U+gytkwsUmR5tC1sUNFu7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jczjyUIIwYZ0X4YnQD2xgQ7yG36COYJnGiD3vBeBOyM=;
 b=NQpPV8zQqjyzVy2E4nmg1L/72SJZyAaHPtPeo717wZ6XQkf0Gb1dkeDKiLjbQdgubTcwPf4nu1VLRf937LsnZ/DOAtvX6GGGcg4fhU+LABpTb+pykeSDoYrOF16whu4Rw37HEB8l1TGXGSxwqa5gW1Vg1epyzI3XRUDSEgfCM8J4gpv6/M/5F2isSp3dlNkghH4OBXV9kUjTVll4HM8lsb8KebPL6wlkgE7rsZ0vTliTiFJgX5lYDi/1sXAzdrhIwFTsQVYNsKqGILQNWpSb+dkx88Cz+X06jmIkqtdOw8/4B6MJjkVyFUYgRfxOL1gAI3wsPbEjZpEWB5FYLGsCBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jczjyUIIwYZ0X4YnQD2xgQ7yG36COYJnGiD3vBeBOyM=;
 b=xJvaolwpE9aCBhZ9T2BBV37UuS1Kz9X+fQ5LDRWElmd/QkSGT3fGIoiguLASsrXjcJG5oLqFibqZ99Xy92J7y6Yr07KXxpT8F2zd3G7x+eUv3Jv/oDvj06mqwLk/INhLC/gRYmwu6M44jpBZfN51NB/Okf9vC5e/ObUfT1E01LU=
Received: from DM6PR11MB3900.namprd11.prod.outlook.com (2603:10b6:5:19a::26)
 by DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 07:29:08 +0000
Received: from DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e]) by DM6PR11MB3900.namprd11.prod.outlook.com
 ([fe80::3dc9:b760:b900:437e%6]) with mapi id 15.20.3131.020; Wed, 24 Jun 2020
 07:29:08 +0000
From: "Lu, Nannan" <nannan.lu@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler
 for AdminQ command
Thread-Index: AQHWSc4yvSpig+KIjkWHAVeXORxKRqjnR06A
Date: Wed, 24 Jun 2020 07:29:08 +0000
Message-ID: <DM6PR11MB3900BEDF95B60D0DED711A48F8950@DM6PR11MB3900.namprd11.prod.outlook.com>
References: <20200619045711.16055-1-haiyue.wang@intel.com>
 <20200624020801.104003-1-haiyue.wang@intel.com>
 <20200624020801.104003-2-haiyue.wang@intel.com>
In-Reply-To: <20200624020801.104003-2-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.102.204.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05b0ede4-b145-4a15-95e9-08d818104885
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2043B64F623E98188892E2E4F8950@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KKgI/qgOw29U2HyLMHBNP77GJCP08BnnJ4oslTHJlgzJYPzeRoFSRX1kRR7P15RIVmCVb5GFgslkHXf2Dnlst+3UiJDUUD9YqzE4o0Ul9NtAQkJhPIgLshKRyQGasOBwgzABMZPAe38QDSxw9rYdRUZzxPKBu0xPgju8c0Y7kR8zxKe6Ml2efURaldCDlc3H/z6wqyzwd9MFtj8gRZTX7p/6MW8JuvZJGLmgqjtQilwSGEZKi50TrmTnKVqdtKveHoJ7NPuNCZ8lYq6JQlfL53xf3mWPZIv5Pd5ZP1abtrN8hX0aZ9nOgXX5mA87BUu9STx2tZgTOkCB+kGVLfjmdaGo//bylZIoEBd3npc372YyneeIPkHAZWKjw5IUyIJcUwd7x7tUUjtueFHxLB6ufA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3900.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(52536014)(83380400001)(71200400001)(8676002)(26005)(55016002)(9686003)(2906002)(316002)(33656002)(186003)(86362001)(8936002)(478600001)(66476007)(110136005)(64756008)(66946007)(5660300002)(66446008)(76116006)(6506007)(66556008)(7696005)(966005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8UfrQ/DPmY6uS599c6/lkhOVN2G1EYHo3pU/g2cQ1RAhkhSDRH08hybgN0vkrYWiw/ixyWx3G/+cnwh6swe3qsGuNB+Uo5wj4A0KppgFx9VZVRZ8X3lQofZa+FxleegR3ji5chNpfUkv5AtqnCT7RYpkhSh3+3Ut2Pu4tF3riUaSaLxtKq52Vg67h4kcVMxLYXi3eJUYDg66yqZDQ9QkEjnVuBKbIqtsJWKUSAXYkK7zPW4EZmB4mHAF6AACG+p3D5fALsWOcz7k9AjrjpRpEyQMA1vejBZJE2rzGwEACUU0Vyx/agmCiXJdZ+pWVewMYM9SIVqLxHTnH7W1w/unOoBmVCVoTacMKrEbGSEOyWsxjg7I5JZRw8ktLYo4jsnJksn55+Kus3WhvGXXY8siJex2jGk/TCKBrOwszuShhZd39Nto5pdojv4bu3fIuw0XJzeeJ77q7EJbdyUyKojw2+um8KZCRxWkyOtu0YE9qrEboIf/eqtchgWso4Px8mgK
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 05b0ede4-b145-4a15-95e9-08d818104885
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 07:29:08.7213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NCPYtBdeaKbfOQlU8VTAiUGUFnDPrcNEdjRDTeR/mBkebWZiDR0t83vKUSkeQySMvv3V83rhnwhWTU6+NFWJsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler
 for AdminQ command
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
> Haiyue Wang
> Sent: Wednesday, June 24, 2020 10:08 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v3 1/5] ice: add the virtchnl handler for
> AdminQ command
> 
> The DCF (Device Config Function) is a named trust VF (alway with ID 0, single
> entity per PF port) that can act as a sole controlling entity to exercise advance
> functionality such as adding switch rules for the rest of VFs.
> 
> To achieve this approach, this VF is permitted to send some basic AdminQ
> commands to the PF through virtual channel (mailbox), then the PF driver sends
> these commands to the firmware, and returns the response to the VF again
> through virtual channel.
> 
> The AdminQ command from DCF is split into two parts: one is the AdminQ
> descriptor, the other is the buffer (the descriptor has BUF flag set).
> These two parts should be sent in order, so that the PF can handle them
> correctly.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   2 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   2 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   6 +
>  drivers/net/ethernet/intel/ice/ice_dcf.c      |  49 +++++++
>  drivers/net/ethernet/intel/ice/ice_dcf.h      |  20 +++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 130 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |   1 +
>  include/linux/avf/virtchnl.h                  |  10 ++
>  8 files changed, 219 insertions(+), 1 deletion(-)  create mode 100644
> 

Tested-by: Nannan Lu <nannan.lu@intel.com>

> --
> 2.27.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
