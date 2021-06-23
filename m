Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1733B216E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 21:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5FB04067A;
	Wed, 23 Jun 2021 19:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oC86nq_Rgfy0; Wed, 23 Jun 2021 19:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 857E140643;
	Wed, 23 Jun 2021 19:54:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7EBB1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D208D4063E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:54:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kco4qMYfXWcN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 19:54:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1C1F240646
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:54:06 +0000 (UTC)
IronPort-SDR: wk+1uIGFqyQVgRBZGhTPfoRbL5bguZP5JW4lyuJtBCnHJAgcKkQIki91EWVRFDlaqjIdyYhELv
 R/fYPAEnqj8g==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207153305"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="207153305"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 12:54:05 -0700
IronPort-SDR: gwEuElHwpONQcywiSua/fbrF2oZf12klIxthR0/6u8+btfrAq3rAAtjQft+RAoWePT40bADv7C
 fqND+2w3NMzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="406796041"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 23 Jun 2021 12:54:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 12:54:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 12:54:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 12:54:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5mHW+Vb2rCw0kbN3aGMvJCe0Jih3vtoj/RqcOW7c8dbiMTOAKpmeOFLD122/viNDbWF2JC985NPdCCXBOsbKpAgNQWtye1wDfSiETlpfvgqOAv8wqhflGzR/hIW46QXzQKIvnrXz352GWkg/Cqo7/kYOjyIRr5RXlciTwf+PXDazvYw0buC77veNxtD6e3jmthWlyPL1Ikb/GZxKxdEbhyCniHnfa8vY2qf10OPzbZXb3YGkiGC0h+K/V26um+rHDw8e/eGsvKoSoWpo6SdORJJ4uZgVey7Ulm9duVrOuENu1fd//qVX8sp+pbibyrjpj7CzUW9bRaoCxrFAXsffQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=De9cblishNtr61ujlvgpYrm/t/law0iVDQDrfHzA3I8=;
 b=AM2eFrCbIrovXZ3HY8Z4kvRFynba77hz+q3TZ7FbJrUt8bHpdwjsHbqD68gY/v3QMqBg6Ai5FVZsAmmRitLEgGqACzUK3s6oDsmo+JOmYA92HUU84TOjk3IBr0v7xxmm/aUp2ZzUBYnH4Ua/b++nYDJ+FeF4kPKkRP+49yDJoJg1Ryl+geUKcbETqo4IrELcPE4/QlhzWNraTjTuUoP5t7w8AJYVLDLaPXDDDkKKKbK392yQNoxUMGwzXDVIMbRtd46TvOrP6k+OuIy4TpCH9Kexd5zZNdjjFpJrIBzVG6PHiGm1Or4ClOkIgjPRLTMXJILveTYxsoS9kdkdvy7D2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=De9cblishNtr61ujlvgpYrm/t/law0iVDQDrfHzA3I8=;
 b=qFN+FpfZjCs7qi3lo0gAEozSlSJ3EU8sCCI9L6/nKN5od/ILHlDOHilGJu9vf1k67HDwRzyF0qq9jH8cXaNknRAZY+lOBTAqA/z1l+bAxY+kRA3LUdkWsTwj6e6jK/eL09jeZa+Y4PglMBH+zQVcr/k5VNJSxyRdVCrkLeURaeo=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Wed, 23 Jun
 2021 19:54:03 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 19:54:03 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] i40e: Fix logic of disabling queues
Thread-Index: AQHXPSFXNHvbiSl6rUeXUk7mHNKssqsiWKig
Date: Wed, 23 Jun 2021 19:54:03 +0000
Message-ID: <SJ0PR11MB5662A063069637A338BEFCA4FA089@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210429174947.10691-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210429174947.10691-1-arkadiusz.kubalewski@intel.com>
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
x-ms-office365-filtering-correlation-id: 8e49de9c-9d0a-42f1-c6be-08d93680a700
x-ms-traffictypediagnostic: SJ0PR11MB5598:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB55980CF8F5B83FB7A174B088FA089@SJ0PR11MB5598.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LvyOeGdnlqYqm9P1U3n953+W78zdLZK8B0LjgWflpYw+2MavP2PU1hiY3nASn6LA+81+49vB3+PzCljwZ3YY4PRyg4QeQZU3aelryg5QgzlVoX3/SsjTddcX43pHY/lhr0KHrgN7NhQouHdV3On/qYaJtgDV4QMYN1jWrS8JZxbU3WXNgdeiOG+WYjYPPRcpEGGwxj/d+SHdmw7ky7e1vwj+BuSUkDRi3dCgJ1anNVk/6DJZbhNgvXl1Dd5mxedH91+HcTJn3e47GrmOmgJ0kDm+BNxwezkEtRKTF764IK1oRCsw4tvbVJCAWhX26b1h++7FjyI+0kQaNsQMrz1kUmn8gIAN91YPubiOXumujwszRGC6MW8l2atuiEYBDQWNdWYgmaY/iXpLQdkgHvE+N2tsO6wURuDTZYuhsH3KoyHm2Oar2Z4mQBbVfhRY/cDcCjBQZ4YE7Z4x+lG85f1XqQ71xMf246YjiAiVcFW8WEI9bzxThhH6rzRkCzDoY1riI+zLUdPHBjZr+9yi2/1BbGIRjGyMPWQ/XG9EmybWZrnkQT9CQmYuLei43poketUmSDZGLmTDmzrai00m2DIqVFa/b8i1KO3POKH9Hv4xT9E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(396003)(376002)(136003)(346002)(86362001)(4744005)(9686003)(107886003)(4326008)(8936002)(110136005)(316002)(5660300002)(52536014)(33656002)(8676002)(6506007)(66946007)(26005)(66556008)(186003)(64756008)(66446008)(122000001)(38100700002)(71200400001)(7696005)(2906002)(83380400001)(76116006)(66476007)(53546011)(478600001)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wWFwJ4DK+E/Dzq5igzBaLDCvmWf29vKltI+McEvpXGmYOx2hPvvLwF/44/ZA?=
 =?us-ascii?Q?B50iH9HATQBVd/Bo7j3WETJmb0IWvCuLKGUqVFmG5lWM+oozKaX7YuvSkxD7?=
 =?us-ascii?Q?Il916ow0SbMn0JK/JvM6GwZ0PcaKWp2lT3wKw7iu10vGXJXXM12uYdION2qu?=
 =?us-ascii?Q?uDPNpWJUNYNJJCQjYBTjVF1S+T/xIZ5eEFpeTW1FOfRn4aW/DqXjl/UzmQ1q?=
 =?us-ascii?Q?fYV7d7ULreKxz+noKAWo0W+D+TxghNQTPVq7mrleyu4ah0gbYxnxwa5sMIda?=
 =?us-ascii?Q?KBlLUcWQhOd/aGsHIFe4cfvQ92gzR4TjGbSNfL/pW0HKvO+szt46E4jDklSk?=
 =?us-ascii?Q?uJrhkw6J4Fe6jvDdJKP5uQ8h5yozug/5O1JN+GRa1HRSWm8TXXmXI307O6tn?=
 =?us-ascii?Q?Jx+4DubL+RDDnHgU/bN6RmVmDQrPONV2D9V88zCKn3/8T5tD20XtRGTbohpG?=
 =?us-ascii?Q?bT1HJaDLqaPBM5KgXXWSQOPPXoMOdPIpxkSAG4V6nEO3/oSmk64JO4ot5mYm?=
 =?us-ascii?Q?uGFhbjAz+jqBQsTnRsp7ngUU1JkAp9NOmKimYT25iP8MfRDf07xdxBZiTnbT?=
 =?us-ascii?Q?I3uQDVaVWZk4zan+RU6FW+j4Vfv8L4gvqnjDJrckgN+qwurLVBh2qs+PRhXM?=
 =?us-ascii?Q?iN3p+LQ7lghSPNEsASXcsiCc14LgZfhy7MgmPQqKaE+qReVUotX9JEMOD2mv?=
 =?us-ascii?Q?5DYO2YvcNvhMyuC5wbcllwOCgGjBgUuN4HoNl9+onOVQiQY8gI4/d7wCQ8/p?=
 =?us-ascii?Q?3JM0efduj7lXawEWO89Js3I3F/d3DTE38zHc2KnB3GMHkM8whLTmmSpReUen?=
 =?us-ascii?Q?GOpgBPD4Xe/RgbiRjBEG8Tq7G7+KWgYfXVmQwJp/c5csQ2CHpahtGTtax1Wh?=
 =?us-ascii?Q?kdsvQoi3fAv+JFEEPe7UME934s2xuxpzAltShNFLsmLXDdpLLLvO3KMDBNcR?=
 =?us-ascii?Q?mDN9uty1TIm1gRAQTtfU6z9jawn7CdXVddQiSvGpKQvPc+mIJUTdXsri2iG5?=
 =?us-ascii?Q?6DsafX0IkLLJgSjHjxKPIooj70ljQio+5IwdTT11GmCQypj6Frs7s/itCvx0?=
 =?us-ascii?Q?ERTNGeh7JJTcR8R0gTQugGAB8YcnUC1OO9AOt4qvW2wXuid3M4OV9cGcSyly?=
 =?us-ascii?Q?6SGdjUgWq599ms/vmuy71rxm7G0oGOEnrXDZ59wHM4jdllsGzV8u4EuUk9gx?=
 =?us-ascii?Q?9vIu5YTjLL7oM4jG0BtTcck3X/+8vxdI6LQ7T/NQv715BRhlcIk+97Gi7P7f?=
 =?us-ascii?Q?a6JVGbw1XwU/WxXO7bAjb/qCtF48kPBrUBXZL47GGkViRhLmsH45f+LQumL7?=
 =?us-ascii?Q?mcO4uv2Ru8XMwAYE4G8kDJS6?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e49de9c-9d0a-42f1-c6be-08d93680a700
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 19:54:03.4020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wO+p+8ujSnRzMceo2EOxDoponTafDic5Mnhca94wzm8m/Nekp9fx2DS0y5O6kfMtPRMw1Te4cWFMTTU0XDO4V/6SdRhPY1uNL8Hob+APcUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: Fix logic of disabling
 queues
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Arkadiusz Kubalewski
> Sent: Thursday, April 29, 2021 10:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] i40e: Fix logic of disabling queues
> 
> Correct the message flow between driver and firmware when disabling
> queues.
> 
> Previously in case of PF reset (due to required reinit after reconfig), the error
> like: "VSI seid 397 Tx ring 60 disable timeout" could show up occasionally. The
> error was not a real issue of hardware or firmware, it was caused by wrong
> sequence of messages invoked by the driver.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 58 ++++++++++++---------
>  1 file changed, 34 insertions(+), 24 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
