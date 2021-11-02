Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E044F443337
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 17:39:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F406D6087E;
	Tue,  2 Nov 2021 16:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nPjHfUgpE0HI; Tue,  2 Nov 2021 16:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F04766087B;
	Tue,  2 Nov 2021 16:39:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05DA01BF336
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 16:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 009B36087B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 16:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZXYb_qYd-F0y for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 16:39:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5000F60870
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 16:39:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="231570964"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="231570964"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="449469086"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 02 Nov 2021 09:36:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 09:36:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 09:36:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 09:36:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/C8mNy3Vy1zpMwmQL+N6wDtEyIs3s7XeKCb0qFlpVMfn6BLAG3CdtCtsM17lAOF/yrtbsYrmK2bHFFhLenE7ySZEeBF0TZbcmjvLREqEngRE7fxg7M/4fA8fmo370/IDBZrBZVhY5jwAc44urEUoadfoFqLR4EcsP/eWkO8JQJESG/f7mCaUpwtXt8NdNbnvL/pElVrXUSQf2CSHP2sRI5q8fRMlEK6ov7Ebfxvf8XcpHIYHD27v0qdM58BAdrsqbRKL3qJQackixNcd8XNem3JFSrJDDWNYBlKpIdazRcnG4RPQeJnAHKdPDaPmVIMuWsKfNnP2CraeL/fcpvwow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUuBjmlmWpOETJzRUNdE3kjS55q6Rr+0KuQSilXG0Rk=;
 b=UAaCGOy7j5lXQdbq39nkib9IuGFUQ+3zuM+MaqMeD8ct9GBNOR2wQ/Z1Xv93YvHo32kkbI7BMMGSVgm1kcE3Bn7jxnuJXrrGDziZmZkIIAdDJ+3hrk35sjVcAD4cgAxNqXkkXMaB6VHn88tNB0kPKY37CtomIYWm70QbyvgLTpkyMP6pG50VduEr8gxJZVrCLmKciA1h0ZIPsqeL7EYQP0RJKvhsCZZ2LcR+qNdF8PNqDcVHHhK8e5W9UKlXww8Y3efqCjviDAaTVIR/oP1/ieFjDoGJyx0YpyKTn++Eh4LaBaKcY4S9IaoCvxFCWxWwyQybgBqMzMk8sFijxd1aiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUuBjmlmWpOETJzRUNdE3kjS55q6Rr+0KuQSilXG0Rk=;
 b=NE9UblrM8kfxC0B3tBfy6y1CQSjKqBgJdwlqSW4uTUzTsjt8HtgdFKh0Vf5QNnsN8MFMY2SlfzpJxlQL6sNJjSDqLKsUKwSvFKyyPjzRQHPwT6Q8HbNfwVcRe5l22j/r5S9eRTD3TTrJnPvGf1qtCH6NuGDnsi8+N0J7IfYWbDM=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB4983.namprd11.prod.outlook.com (2603:10b6:510:40::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Tue, 2 Nov
 2021 16:36:28 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 16:36:28 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 07/15] iavf: Restore non MAC
 filters after link down
Thread-Index: AQHXWWPyTplTGjnsn0+nSB9bjLlHP6vxXMcA
Date: Tue, 2 Nov 2021 16:36:27 +0000
Message-ID: <PH0PR11MB51441320BF0B02BA7D4459A9E28B9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 62199187-3661-4dd1-60f6-08d99e1eeb1e
x-ms-traffictypediagnostic: PH0PR11MB4983:
x-microsoft-antispam-prvs: <PH0PR11MB4983AB237D11B591EE218DE5E28B9@PH0PR11MB4983.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:343;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gGzX8Eiovugea6l6BPkOtUEZfBJN89UUc3vLfR9Yx8fc+A0Uc64FwrKpdHL6xMLTCmSGwkI33bUq4jWhN/GvsR79wklpgG/4diLMuRxaMuOa6XEEr0u2XJ+adhK1XMfy7zPsMQF+RDs8rBcbXSHAcyP76ECg6ONUxEKbz+w3z+5ba/OmW24oNa3WLDX3bWF8LFILyyd8N2teY2KaygXN1AnewyIbQMd5W00VbMJYxzmMiLnE4g1TrNjzwhSyLxUh3l6RbTtHzi5dmPMvEGJlRryFhCTo/o/oSN305ex+d6SQy/Yjjy7T5B1B1KpBVPwooBKw/B/e1bcVF997APkPxoJABgbfKPqjTdgO64mSeBZTq6J7yYzHK6c7GTZAxG0aYYdBIciA4eLdHolBOE4C5eQo1LP3mUubPG3NFzaEXGhUcbTGLMvVC/rdlR4DqaGcHPy/EbXoxjtap2sEBlA8c2g/jh/iCBdFtlICHS/FXMH/e8M93it5iDrRCx/K9O6rb6Ve15jCP7pOhb1FSBeoIh2kHB5jeVH2VipBeAfnkrwbRHIrUwd28b0wegzmiSr2j3c93I6KTs2ZbVOLpPxOQB7th09ZlZPFqtghi+SJctAvfEGbh+y7lcDptAnvy7Zz0ZbCqeiroKikJoGkHpaZYsg/ky1sEHFIX5q9pN7Ut+V/oU+BcEVM19ajvTVhssB2k+DQaDkiuh9WPL59UIF9ug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(64756008)(38070700005)(122000001)(38100700002)(66556008)(66446008)(33656002)(6506007)(4744005)(7696005)(76116006)(86362001)(508600001)(186003)(26005)(71200400001)(107886003)(53546011)(66946007)(316002)(110136005)(8936002)(8676002)(9686003)(55016002)(82960400001)(5660300002)(52536014)(4326008)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tOWWsMTNJ/wXPN7ZVfNg/+N29WDHJ1EOWyd0TbE1D64iHJAeJKVhy60EAupe?=
 =?us-ascii?Q?Y+nAlAPYg46VODY/mwkZV7e8ccChKr56J63BKlfWHGPZZG1AOQBsRF2zGvt+?=
 =?us-ascii?Q?azkbQL/ejvLGc81Oj+49bk972vmMMFAITnZGH2F/PMBUnf/kKJmM5ha4ax0B?=
 =?us-ascii?Q?XbabyGlcgZijbgNGSfcTyP/RUFKB+5LF+FiuaWoUMm1WyTvsRZre4hb1jR8k?=
 =?us-ascii?Q?/w+puK7h5VrTtgfnxNSz1n0ekKa/4644sSu7mb33z0q30w64BrtaGJTLzCN2?=
 =?us-ascii?Q?jbZ51du1uqO+v1bE/Bwb0vLuF4pzirtwzjDj46oElSDkp7hqJhv25qy9sbQz?=
 =?us-ascii?Q?BRGpTFKv7p8SKEWnjMTb3CR7ZzdhYKWLDMoRq9InnMEC7mfqlE2hS4EpjB15?=
 =?us-ascii?Q?Bi1kS9q7IkLFdZW3pAaNEULe+8FY6j6kElB3HdMTnZ2p3TxxiWr70yh+F3p2?=
 =?us-ascii?Q?F6hAc6D9ZfZjq1w0X3eyzhxtRaXFROB4A2Knqy75kKzPHJy+wrcH8qwCGlkE?=
 =?us-ascii?Q?mrcPYg7ifafMkG3Ts6Zsan95dwIiY4eViOTSV4QYRRKnSSZOcEd6WhrJPkmB?=
 =?us-ascii?Q?XTNGL19plZ6Bv7lz7qQkT81e4ULCCxHHBgWf1gKKTW+iJIExEf1oGjwpYX7m?=
 =?us-ascii?Q?mSnof5uK4rp1mkAe1KN+GuSgdls1/YHJV7iGacprMpYgzIOxfVKuQ4RELN/R?=
 =?us-ascii?Q?QSO3R9X4aJxNsxUIRjJ+TR7LVSQnMzuh38MH0IqUcii9Stuxx/8gIp2oUC21?=
 =?us-ascii?Q?mJBZhTyyJhLXgty0PYthgyzZnKCIm3lz8YAftwiFkBZcRzLiTo2Va0LdCK1G?=
 =?us-ascii?Q?MOpYcXbHGZNtCT5PZEImg0pfJYM2C2aGFPM2tQgiENhZj1ifHDgFkFS0CqbW?=
 =?us-ascii?Q?u9gMs/H64W7H4CWxpbK/jHOvA8fNP/7nchDLgoSEFYj3Yvunm2f14UXnM89N?=
 =?us-ascii?Q?upAZWkbLs8hgmeN9qIDJEF3XTx/nPGzOT6QSoJdqZyddyh1SKx6fukc54f75?=
 =?us-ascii?Q?YnKIfRBJcGmHSeX0jh1spbqYD/VLlCQSfddCLo6EcdjJa7kTqTs8syeFa1Gh?=
 =?us-ascii?Q?03Gua/oR+UjUxIvmSuQa61hmyPea+PGGixB31cfLp06cM1SE5LAYExwxDRyK?=
 =?us-ascii?Q?YtBL3WqgAbJq1wR37yv8d8yhLg++ErPqIY5kLVqVEjfvZHGkT5KviKSrk0fd?=
 =?us-ascii?Q?PAemtr6li5RmELIJO24vOQvvVs5kVyPqYk9xgtHlpCngVQoqanF2ORTKfgxn?=
 =?us-ascii?Q?2K+EgU/vaiFr204y9Ck4sRNQf9asp1yLVdRseFgtLq/eOaHyMzUBbRW3Hv/U?=
 =?us-ascii?Q?n4q1EiXEmzBuBbn2SsmanlLXqDKftGqAtVJmXPKUJZs8SGpVwLWbvofI7CVE?=
 =?us-ascii?Q?RcuwytLhVOXVCWI8T6/fnSeYJa11lk1oSa/UFGEe7yEcO8JXftBrIW9rhTPO?=
 =?us-ascii?Q?pzlQHx0+cj/tYKCzKdptDcOr+xAsoLfNymaCHufy3qv6vKQpzPWm+IozH0QM?=
 =?us-ascii?Q?jPmtC6J9pgkFfzG132nVXLDKGmMUvAviP0XagORcqfx+AH0RtRayuBGMLxrQ?=
 =?us-ascii?Q?V4AWnxNChzY2bv8aYCpWNK6n+yfZQLUKzbLJMKYlmEbTpMdvL9PjWblvFAcr?=
 =?us-ascii?Q?ZYXXPNnZlytsOmUX1ZomVcUMfJxHnLgY4Jc8Jtny5pOIZ7l3M33bWywvEiEk?=
 =?us-ascii?Q?hD8N0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62199187-3661-4dd1-60f6-08d99e1eeb1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 16:36:27.9573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vauoTVwRyqQ1rTXPG/ScwzaQIlGCi7zP4+QJiUk2h3D6k/BqBOZAJ2kly34Q/TbFsGbLEY3MAqcPoVFLlmMbwPHZWxyLGWF9kka5FlskzVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 07/15] iavf: Restore non MAC
 filters after link down
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
> Nguyen, Anthony L
> Sent: Friday, June 4, 2021 9:53 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 07/15] iavf: Restore non MAC filters
> after link down
> 
> From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> 
> Restore VLAN filters after the link is brought down, and up - since all filters are
> deleted from HW during the netdev link down routine.
> 
> Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 35 ++++++++++++++++++---
>  2 files changed, 31 insertions(+), 5 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
