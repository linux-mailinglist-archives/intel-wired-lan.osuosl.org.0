Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB33531D265
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 23:00:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79CB06F5D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Feb 2021 22:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbV3fveE-0xM for <lists+intel-wired-lan@lfdr.de>;
	Tue, 16 Feb 2021 21:59:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A26646F55A; Tue, 16 Feb 2021 21:59:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBFC46F4F9;
	Tue, 16 Feb 2021 21:59:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77BAE1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 21:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72EEC85402
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 21:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJVHMeneE6jr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Feb 2021 21:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9456D84828
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Feb 2021 21:59:43 +0000 (UTC)
IronPort-SDR: 5Kfk0ubOXMmzncuXxWvIhRIUyIrGNX5x3uXWgJE4IxwbotfadgpglsESlMuENZo0q+ac7o6iRp
 6ji6OjAgUtaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="162163751"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162163751"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 13:59:33 -0800
IronPort-SDR: wy8hlxIj+xZEbIILvHeAEDoflxlDab/Bqhlh9sNgGc0KOze3ZrTxjvr71tSDbJyGhD63S9dE9h
 +dlh4hSxuwrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="418885804"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 16 Feb 2021 13:59:33 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 13:59:33 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 13:59:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Feb 2021 13:59:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Feb 2021 13:59:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JkG7Kh6g9iSX3B3I1IT1XC4IFbGt/g+Kw1gEq6vqI+uiLtAFmlAN4PODBJZJAG8U7xnqqFDPL15AWdSjoaKbD4rRYx+Mi/Gavx6tirtm8CIpaAzAr5jtuSThuNr7Z+eoLqNcWwi/5j3MuhaeKGpw21kCAOlsAZq9PU68ZGgfEUlmZaq+jcYvz3TnJZBCNd1qWbGbdaa2bT8p7aWJSDmws0tq+6tvuhWJU2sfpK61wzPs2eo4Ju5TUiTUUUAR8q7FJj3TEZo5IGwIxdxSmGnWawcRTn6tVvsvwkgIgm3pYYyXEuzd+Rb2DtQDqFewG7U7VxapUUdT8T0uIZbkIdKksg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+XgziH6R6rce1qxgGQtbdLROkDT4XB0+ojZXbDMQLU=;
 b=jaEoNzCN6Vlxi0lKtFRhYVXvut1uTtKhqx+DRe58T7T440BmGuWsaWfwhg+zNYg/1IUKC+W75pYpsh4kq2/Ai0E3Wky65mKZfe58KSyshGKByLENSbM0kmdLE+m7mhfVzsUCcRRxzj+4XN+F90dOcjrLUVxCIUckiysT0l0xcMSvbLzkEjMTJb94S/Hfg7dW3EDb4R8mQREs5Hlfr5aIseMliQEBui2H7DPT+mQPxMBsblWND05b7xfFwrj3y/dZioAkPGyQC8PnrNljqpc/yqZxGYpU6Y1Hk/YBvopfWDcNxH1DznAUN9MQcBmXf98kgyIsEkJefCxw/htpHmb/Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+XgziH6R6rce1qxgGQtbdLROkDT4XB0+ojZXbDMQLU=;
 b=HwRwDqhhYtzBj0K9rhaNX52W/xF9K0ALJ/tkmBunY3FTRJ3eSOadg/Jo0ppID6a+9zo1cdOUl1nBLk9Xx1BUiqLoPAW6CeNp+OmPwfKNPNxuDxDRRO4qK1MhuSDi6Yqb6qJwRAy/7rE1jGh4md9MZv0p5gPhUZkusn08RAalJbM=
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM5PR1101MB2123.namprd11.prod.outlook.com (2603:10b6:4:53::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25; Tue, 16 Feb 2021 21:59:30 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::8df6:2441:c0d7:7456]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::8df6:2441:c0d7:7456%3]) with mapi id 15.20.3846.042; Tue, 16 Feb 2021
 21:59:30 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Thread-Topic: [bug report] i40e: Add hardware configuration for software based
 DCB
Thread-Index: AQHXBJv7wkstMndcvUqMnX/Up1t86KpbVKBw
Date: Tue, 16 Feb 2021 21:59:30 +0000
Message-ID: <DM6PR11MB4657517D425F82F619CEE06C9B879@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <YCwgM5yvXRAZix/Q@mwanda>
In-Reply-To: <YCwgM5yvXRAZix/Q@mwanda>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [83.20.33.167]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9528a56c-cae6-48d1-2c4d-08d8d2c6230b
x-ms-traffictypediagnostic: DM5PR1101MB2123:
x-microsoft-antispam-prvs: <DM5PR1101MB212392D2ADC215F767BCFFED9B879@DM5PR1101MB2123.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:407;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uZc7t1FCODagyOD80OyzysSM9t/kllF07KkhgUcW8oWqukFlLdBGwF6tAyJ5/1AcY7HKyXmPoIcAawBCmsV8CxpZLsxIVKi3frT1ttm+abHdaSGgaJzLl3SXjpZ4RbP9HSaxGA+rkT/GUssBU1GbfGR7sruDWv1SPkx/D5cxxlA8mcb1N2qcXDcBdYTgQEWYstgW59B+K/ck+rRNbTAHfvldF2gnqiqQklt4i2f5tmufr7LaA4xCqguHD2798FwSTHVQP7rl724Sxp3M3JcGoaYEZ9Pb2Boxq63N4qUaPJV4OTN9KgOemrnKWDDCLmtvrupoe3I2ycfQi1OmjoF0+yFayX+fDg2YRSvKx0Emyo7Ta/4yrNK67icEFz6yOoBL9452BG93FnHDWA5JmUFaL/OVcRVVTe+nXLCWRnFSoCCYIVv26kxAhevjFPabW6hRY1nnYngLCWrE4WEGAu/txGb6M9mtuzfh7sWe33uyG5GBK9tPkaJWnpBAfeOJhy5zesMw6JKYy/J75fkiR1bzvCWelqSadf6PDOFy0/uW0YdYF7iFC2TSqea7oEM2rw+WKav+QE22BO+XaCLafZTJFqinBH9soNTLa3X6zZeF69Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(39860400002)(366004)(396003)(346002)(66946007)(66476007)(66556008)(64756008)(9686003)(2906002)(76116006)(478600001)(5660300002)(4326008)(26005)(52536014)(6916009)(66446008)(6506007)(83380400001)(186003)(966005)(55016002)(33656002)(316002)(71200400001)(8676002)(86362001)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?6raKigTz3Ld2Nlz5geh7AzF3xccPEpaZRmRt8KLeJCnYOlPygufH1SJmeceT?=
 =?us-ascii?Q?IzQ7mLfWnBftagRzGyvePbK+GqizvBJdZ0155bm2CrvP0/xRz5/K++zYpxwJ?=
 =?us-ascii?Q?dMEGvsnVmmPfuxTNQMxfwynQe2SNuaHIgYUV2z95uKyW5Tu+dSVAakfJj/Z8?=
 =?us-ascii?Q?yztwX5zSgVSg7LPGJk/an08Z0vqTYK618tEAW7fv88jMmvqSAwk95eh1M96S?=
 =?us-ascii?Q?647kD9/dTWXMlDstt1S96Ej15V8xAgmqxFfu68y50oEQgidbfdNur8e7k00T?=
 =?us-ascii?Q?lwRg1B4L7X2jPlCmnFU9T81ViU5Usnl1nfbsPjN7Mm2tzq5D4J0rNuMKmjih?=
 =?us-ascii?Q?CH4rz7PaRMXZ5t2UrDXHtqM5kBrk0X3i6HGNvuZLyb3F8H/SoblUOIfNPDJI?=
 =?us-ascii?Q?Pg6biSXSwf4MCLuBczCis0EHqXiD25uTl2h8y9EKiwRC2/9WmtnqpWnp4JRq?=
 =?us-ascii?Q?UzRYDzp8ruF7cgXnncMUWcn7LYNjdWb2GnenpdeJpjyjn55LhbXfwaAGLm34?=
 =?us-ascii?Q?9tLxuBJTEmBlainQBePdTwB9d/VMiU19nKPrEAjkk0mWrvFcuLk6UDO/ymZv?=
 =?us-ascii?Q?uKa2GPqZuz1TaI/3yMx0vsySejTqZsOpI0AyqLABoKzkWgkC+jvScVBMFLqC?=
 =?us-ascii?Q?2RaeqyhI3zcSxd05qJARPUHowlDmIvzFW4hl12mwwd4EYOw7FG8q8jRFm+Ii?=
 =?us-ascii?Q?de9KSUD+fzHoVlfjGcNWvKrlWlpLwztBWfCmciIAAy1yhWDpuXZiEjDnDX1n?=
 =?us-ascii?Q?V9k0JXR2oHx6dErmJYeN2raI4zZAyRdHKAFyuGyZAkENumjbXWC9BvvrIZpG?=
 =?us-ascii?Q?FacRJEE63MkrcKxsat69r1WheoRaeIgoQKNfX1lMWwhbbsMB8mtZCLDWIrYE?=
 =?us-ascii?Q?SIRlQuuJlxZiE/3r5yLJzgtrTF4YDWLAUZ6u0SLXCBQ0a3RorFBD5Hf5wBAl?=
 =?us-ascii?Q?jBhxOhPrmTnWEF95ByxrueX/WNy3qV01jFeZiA7n+aMHXT8jfVsZlmTVVDfH?=
 =?us-ascii?Q?5xRSEAuUfU6nbJzIauxcAYQMmdp3/6BSZh5c3XYiG4PExmuip2cZvgytfIYd?=
 =?us-ascii?Q?v1O66FFo3s7D7wLfml9NqKe9tK8WWKjIpKMRoRKBaI96Pm+u7BepMRUc3sj0?=
 =?us-ascii?Q?LngbxhXnOhA/V+bJR3ZFFshqH4FlyuAMXbC55BpHw04T6Mhp19U2fF3nrnvm?=
 =?us-ascii?Q?voH7WL8fQMS+YeAHqzW4czirbloJaJ+JSq4yC+kxYAg9GIjiuS06O1hF/l7b?=
 =?us-ascii?Q?YE2bsyRrEEEVgg7sYy9pFhyDFVG91IHDwP8aevxw+V4DPul+uzrpchW2pRzF?=
 =?us-ascii?Q?9hE=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9528a56c-cae6-48d1-2c4d-08d8d2c6230b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2021 21:59:30.5470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ftTGoNjb5FzzBOi7WM7LPxUN1K4+RJio9F8940hwpq49qC73tk9pl3K8Itv49h14vH9CZijFDEJvk0xCXAbjN7IBtHw47VjYQ6HbJFHuChg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [bug report] i40e: Add hardware configuration
 for software based DCB
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>Hello Arkadiusz Kubalewski,
>
>The patch 90bc8e003be2: "i40e: Add hardware configuration for software based DCB" from Oct 19, 2020, leads to the following static checker warning:
>
>	drivers/net/ethernet/intel/i40e/i40e_dcb.c:1645 i40e_dcb_hw_calculate_pool_sizes()
>	error: uninitialized symbol 'mfs_max'.
>
>drivers/net/ethernet/intel/i40e/i40e_dcb.c
>  1628  void i40e_dcb_hw_calculate_pool_sizes(struct i40e_hw *hw,
>  1629                                        u8 num_ports, bool eee_enabled,
>  1630                                        u8 pfc_en, u32 *mfs_tc,
>  1631                                        struct i40e_rx_pb_config *pb_cfg)
>  1632  {
>  1633          u32 pool_size[I40E_MAX_TRAFFIC_CLASS];
>  1634          u32 high_wm[I40E_MAX_TRAFFIC_CLASS];
>  1635          u32 low_wm[I40E_MAX_TRAFFIC_CLASS];
>  1636          u32 total_pool_size = 0;
>  1637          int shared_pool_size; /* Need signed variable */
>  1638          u32 port_pb_size;
>  1639          u32 mfs_max;
>  1640          u32 pcirtt;
>  1641          u8 i;
>  1642  
>  1643          /* Get the MFS(max) for the port */
>  1644          for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
>  1645                  if (mfs_tc[i] > mfs_max)
>                                        ^^^^^^^ Uninitialized.
>
>  1646                          mfs_max = mfs_tc[i];
>  1647          }
>  1648  
>
>regards,
>dan carpenter
>

This is already fixed in:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/drivers/net/ethernet/intel?id=f6724cd497974dcd74ea54bfb478dd47750cd52b

Thank you!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
