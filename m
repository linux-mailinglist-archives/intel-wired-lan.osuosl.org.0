Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 177484424DA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Nov 2021 01:47:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 295356073C;
	Tue,  2 Nov 2021 00:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qm5jZgUwk28; Tue,  2 Nov 2021 00:47:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EDE460666;
	Tue,  2 Nov 2021 00:47:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A522F1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 925A580C82
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oStlrE1x3x-g for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Nov 2021 00:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02B5280C02
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Nov 2021 00:47:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211915945"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="211915945"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 17:47:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="531377702"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 01 Nov 2021 17:47:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:47:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 17:47:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 17:47:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 17:47:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c/VUsVwgP3csi2NOw6g3+hJe3ILvFZgzV/1giw4j1JxeSB181lJ8lbDvvKsZcJoFQjUyRABkIUvKSMqvnLrxLRqAf4w6fUh+216IwqlUdCcOPXf+m4kz6jaJYvUWGeAZ9XXGrUvDOso8I+pMZUuBRG7MJJwsamW7TTlcr3GBd9HqM9Ghl6N6PR/4133gW8Hmy2UG/bQH+P3kTMXoSeS3VBirY2bfLP+CTF8cMPJYqhWBZzDVjsjTI3/V9MvghvdG8BYiAvqrVseproOm44mwzLhiqrW4SRpqyKJ3OPCQquxX6FElvqaJI/uT9803WAH1yZXgwbT+1us+bcpJuzVIkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rCjBZwbjPBxErvLDvC6pSwyuPROoVgHIC1JNBQfy+sM=;
 b=LsSBydxtNd4aTx30Hd0f382cKMI8GkaYxIkQeSfr198/TMb7XLdR8X4v/ECPU9P6ZB77e56k3ntQKQh5rWwIokTfETVEQ5JArElHo/iPUM1tIKaXvNC0dlQMR6oBWsYK620tcayCnZQbKOFuuN1irXngIkZ44vMkIn++v2LTgrTYON+1t84ssOUTZcCi7qrYAx2Vypmhj8+6XT8v4MtVfimtOjlwkmY2tqU2ANweOngXULarNTzgKwjm4GGjPyDP/1wEJ9bSBQwDDmO4vjwGURdBfbvf95kXFx/YgSqFifyI0WmBXeW3tFJICHSbs/h7nM18HDy9uorb4+p9mn394Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rCjBZwbjPBxErvLDvC6pSwyuPROoVgHIC1JNBQfy+sM=;
 b=YSIX7C0w+7u1PT9gH+ygpbJwziF1RCBMnODJaJ7iosGlag4n4JM30Yy4sEKwunyX1a2rGMfUs8nYtuxEKhREprsmAGlXr6rX1+UNCr7+opvjP+UiHNjG64ucS5o2g4zNphnmC21xSZAi2Pm3/e7dtRN2EYIy5wBZlh9v9NloNlQ=
Received: from PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20)
 by PH0PR11MB4933.namprd11.prod.outlook.com (2603:10b6:510:33::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Tue, 2 Nov
 2021 00:47:00 +0000
Received: from PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f]) by PH0PR11MB5144.namprd11.prod.outlook.com
 ([fe80::f5e6:293:84ac:6f0f%7]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 00:47:00 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 12/15] iavf: Log info when VF
 is entering and leaving Allmulti mode
Thread-Index: AQHXWWPfzlZEBkNCJE6Lecu364HMdKvwU4Eg
Date: Tue, 2 Nov 2021 00:47:00 +0000
Message-ID: <PH0PR11MB51449D36431D590BE0A679D9E28B9@PH0PR11MB5144.namprd11.prod.outlook.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
 <20210604165335.33329-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20210604165335.33329-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: fc0e1d1f-1021-4532-fe4d-08d99d9a47d1
x-ms-traffictypediagnostic: PH0PR11MB4933:
x-microsoft-antispam-prvs: <PH0PR11MB4933320E1B15892C3BB24D3CE28B9@PH0PR11MB4933.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:167;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CLt1oEpzBXJVfEsDGJt9XhewCONijpjovbbsjD0IsOXWF2D7b7DUMrkIgVKOEm+mUSIUbsFatOzC1OiPq0FvklPoMKKNIDotJJB0B9yxEV0Ua84vXrP9p6n/9i42VM2cjtLvP3YBsxB7cqsvzFbdpNWOTiZthVm++8Ec+SwwiyQIQnU/XmkD7JK6oubSB6svQwXIM1tXXObrOsRrmC7FCM8UNL28/8cu9mxsaLWxb4BOqeDEqMCtkyg5EMutQlnrMazDZFxTELSRLseL9ck4WzI9hAh5QiAmekmczMFp2fx78ZEB1sFRqpyGYumQKMf9p9Z/bPBXJcfRcSf7Pxjrgs7sqMB9DOjNREdxOSAn4EtTwHTJAoJhF0M7tAGifSknqz9+jqJw0jfdEy2JW3fC7hjHCDRRZVPXTmbdwX0ePPVG7Vemoby28V2vxmMlhMUgbHxBbSz4duYh4lobpP74xrTsZHRGfv9okMA5+o3jEBb95Sjsc71TubhHmIcBd+NPCPC9ac5Cl2SfIGeTHu6pj/c1a8hvluT2R+pd8FEsYGhobc+zOE2hy65pxx5O2WK5V0klx0UefKyWTVU+4J3nWyug+njxx2GXtJJlnGYiTOrLIc3Lu1Zbo0iTsdzfa4ODPVbJwblwFl1/olnHuWP8pYGJwyeP9ZKgeyP0bEWNqt8xKjkhEYfrbuDyVUwZQAmkzP5TBwdPMMADrbwuhOzG7g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5144.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(4744005)(38100700002)(71200400001)(8676002)(76116006)(7696005)(38070700005)(64756008)(53546011)(66556008)(66476007)(4326008)(6506007)(66946007)(107886003)(122000001)(52536014)(66446008)(26005)(186003)(82960400001)(508600001)(5660300002)(55016002)(316002)(33656002)(86362001)(9686003)(2906002)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lKV36O3GdG6dWY3RmQL4aktt/jWg2HLgYy3GBI2jxIhPd441cqWhrLjVaNTm?=
 =?us-ascii?Q?1YV+A627YREKru/NFK6dtTYv1UIcSk+c0xlVJ14uw36e8QUHpG+YQl2/y2hn?=
 =?us-ascii?Q?0VzEbOWUTo7TiCCKowGhfDc0eUCgcwaoB9SnVvy0OzJ265RfOs38h2n6OEMK?=
 =?us-ascii?Q?ZaAVxB2fAMTASqNuokdBeALlV16TlKpG817ooUHjSSUiZGxx6BqVfE7xK5y3?=
 =?us-ascii?Q?o/Ul1Bradoxs4wc6k4DCX/ggR3/YigcSn8oWoj/5QNza5jAle4QlvrTTX+UK?=
 =?us-ascii?Q?/gX1D8NJgJmBlmApN5eYVw4FzBCS+A97CxnHtzYN36+iDm5T4Pb1P1ME1b2q?=
 =?us-ascii?Q?MHpd0wMvLXYg0toR0z6fHNhYUtG5hsWEfWEnA32jcjQyclQECUyXR9S+osa4?=
 =?us-ascii?Q?E6yp/dT/4uhF0FD0gfF8UVyiMArNncpyh3jTLzpgjs3zpzyq9J7+QqMOCrtd?=
 =?us-ascii?Q?KOkPup/SLCGENpB4xrM6D6gXQjBrd1IvvbWw73rkVUVEquttj76m8WS07TBX?=
 =?us-ascii?Q?oYm3YtnnBc20cVAYsn6OeU2MJ+6d6JlJxJ4cPPMdjP5aTLcSEg0/tQXy0JRU?=
 =?us-ascii?Q?ptyZK0fG12vTozpbCS3TBwZWO7jBpi8Nw/HaM4CIrh1+IysT1v8o7W2IKG5z?=
 =?us-ascii?Q?NG/FSh6Ufu1KyqCxCHoLa8bpiK+NJRRnQ6Hm/5VYY1wk39KwDA9irfXgGAiN?=
 =?us-ascii?Q?0AbAoAomK7eh/R+9Ohu1vN68iKmU66MWnBT7UTg1M/v8IRFJYvdU1GYaJPrx?=
 =?us-ascii?Q?sj6llg93KsxLz5JDa3Cax2sZ7hunhw+NZQ37AtNbP/kXzHvwPD5yv8bZ9ijc?=
 =?us-ascii?Q?X1IU5kYa+UG4om8lxO3ZJk2HYEGJ8GJJPBmyR3h7KaOwcd/wHFcsaXeb8jAA?=
 =?us-ascii?Q?vJ1/h19ezctCQz5/541gkFsOichxaUIlQXbspmd8WLe2maRyFs1ASonSH3FT?=
 =?us-ascii?Q?z+D1XYd4egVsZFwMUQtln0nhAsKWY9dzReHmwf9t5/LW0QXy69N4XPJy0OmE?=
 =?us-ascii?Q?fEsFpc4Y2t2um7jt2NZxp6+7lAs5FfEuyqiOIbfFh2NoCi44LwV8JBrgJ4cu?=
 =?us-ascii?Q?D5yI15FMgXGjIFG4P6T6iPICrepCaPSUc1uvF1r9lQsWKvg8UmpfoKvBiYlY?=
 =?us-ascii?Q?MkkxvISFX+kVV4RA/O1Baxl5MhjIXJFI8u7AW7mFuX5fIA4pXJ5Tnsa9p0gP?=
 =?us-ascii?Q?N5xFCIEjJJm3g/6GywSnlAv/XFvfsxoM0wpfWTIdsClq9px8lCkSgLjhi8VH?=
 =?us-ascii?Q?IsEXv3W1rx7TufTZx9GpdoBZnmTZCswjPCCGrVJl0VmTTqY2Mk09R5oPOevS?=
 =?us-ascii?Q?y2Ut478SxAVDKufjCgVrihtDGanXjTLIv/i1t7rbofjVQlnQWhIWEngiYXMJ?=
 =?us-ascii?Q?D6NrlDSR6Big6tjBQSLIG2K4BmPoCjGEcmadGL3RmzzOBvYHcIBHI2x+8CXB?=
 =?us-ascii?Q?ighmqLo4p1yz5hPDyeMNHS2ncyh9T+8WxH+LHYr46nOWdmxsDss2PQAO68AI?=
 =?us-ascii?Q?eT4dofpu/5fqhsWsdz2NlXtI6Q6zK+o1IrNgzWGE0yGNsP3WxUl8IPQX/515?=
 =?us-ascii?Q?wIyh4SBU/+2V6HCrfQvdsxB9hlLktondW8c3FnK7+wBcqkJ9sfxQqfKhrg1k?=
 =?us-ascii?Q?NlwtAyw8cIPUOwJY8l92tqC4ppuV+Z7NsuchqzSBMdbH+CBbMYzGCZF9tdVf?=
 =?us-ascii?Q?UgCi+A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5144.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc0e1d1f-1021-4532-fe4d-08d99d9a47d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 00:47:00.3651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o716BPC9pVusG17Z/XFKWXswxLnRunJmMfdT2VQTJdZc0I+mt62Bg9Cfcr5kLkTgbtEa7I8PClaCd74NhhRyEyguiJVFk+oN55sTp4JqCXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4933
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/15] iavf: Log info when VF
 is entering and leaving Allmulti mode
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Nguyen,
> Anthony L
> Sent: Friday, June 4, 2021 9:54 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next 12/15] iavf: Log info when VF is entering
> and leaving Allmulti mode
> 
> From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> 
> Add log when VF is entering and leaving Allmulti mode.
> The change of VF state is visible in dmesg now.
> Without this commit, entering and leaving Allmulti mode is not logged in dmesg.
> 
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 20 +++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
