Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13EA83BCE0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 10:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47FEF4353D;
	Thu, 25 Jan 2024 09:10:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47FEF4353D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706173813;
	bh=Jg+niwy/81b+FMvPGB4L7Vnym6vPtWAhUoHevsSistc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mi2PEf/QeYWmtvvzjkOh0Wm+ur487Y70LZYUMQ3L3UPZxTdvbyJ6xCUnujyeT+jxn
	 VXhWk9N3N75DgcufRvD6OmceneJIegogi1a86m5/tbNho4XuWlSciLN26sPBM6usH0
	 yRm3Vzp6Sr0N76lCLqWApmBnwk/mehuHUGmp18bxD48nSVfAow79KgHXFE4Z5IFXzd
	 TiWK6n51Ff+zlzYKdzQsN/LtPH/Lo6gT4NoJE0HFpikxDA+hARTWrNFlghiwvc14lT
	 fI33FX/nx+w4gkPyknIbtmA9aeJ5d7HsJiZkQI2PxRHkuS1vLManGFCKzuiR/AuakE
	 iMXv1XtRlqSXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i0GL_S1td5_t; Thu, 25 Jan 2024 09:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 036C54012B;
	Thu, 25 Jan 2024 09:10:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 036C54012B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 560791BF381
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B0D5611C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:10:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B0D5611C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQz3MdjPcByw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 09:10:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 61E7D613D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 09:10:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61E7D613D5
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8760965"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8760965"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:10:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="28706370"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2024 01:10:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Jan 2024 01:10:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Jan 2024 01:10:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Jan 2024 01:10:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oMy9WA3/GBk5yS42GEZiarPutsaZKFt/3+EoL3GHM8/UqLCrOav51HJQTKtSAXzh1rJSEVDzXHxNT9xyuV1X4mKc1Is6x9NHYZnHFKbTBCL2QITSU49nRehtw0uzFuKdCMv6G6dOyYkdK8/zW1zs3zx5+HG+EEFTSujhQXhVUEscpfLjfwxITRctCNXFo2SwWNVurQNdBYKZ/xtYp/XKEgCCz95nhxUZGv7j4YlD6AARVGHfMQv9I46EENRCxOW/5oBTVZcEbvavxcK8dOfAzmNjGf7lZrY8+R+9v/s5Bw5aLGE5ZYCVn6EhFJbtLFtmWO4LlzSIxj57qIdgxUeGdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jg+niwy/81b+FMvPGB4L7Vnym6vPtWAhUoHevsSistc=;
 b=dFcPqW7Bq3mieMrrqpodoC5jQHvi/Ts/48+RUyfdNvszna3B12/gNeLW+gakU1bBbhWWAtCRDDw/k2pkRNECJKGKzYSdKZdtkCJNMKl8lSoNV7JcOc1WDYQHz9jHic4/Q4PLna+FJQuct1qhIE9Rq1fnZ/bwl9kQOCImTb4a+dD0/RdJEiwht5DH/Wu2I0EajeN2qnEnK52YAe52RgSs1GYyhJcsLpdSI3ippC3ciGdO6/Ul/G2ysF9abPhf6Gus0XlCwiM/foI5AO1raGwO/x2ADpUQKBqGSkoUBOkAKuNZbgVnR37Rc5ZvAzHazvqGsPooQvZF9cH8O6/nOKfDmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS0PR11MB7878.namprd11.prod.outlook.com (2603:10b6:8:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 09:10:01 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7202.035; Thu, 25 Jan 2024
 09:10:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v7 iwl-next 4/7] ice: don't check
 has_ready_bitmap in E810 functions
Thread-Index: AQHaTepIuzhEa2yCeU60THm5kUnoe7DqQGDQ
Date: Thu, 25 Jan 2024 09:10:01 +0000
Message-ID: <CYYPR11MB8429F043CC0633B0C4A5CC96BD7A2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
 <20240123105131.2842935-5-karol.kolacinski@intel.com>
In-Reply-To: <20240123105131.2842935-5-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS0PR11MB7878:EE_
x-ms-office365-filtering-correlation-id: 676e340d-7431-400a-9ba3-08dc1d85691e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: whGXzGBFVBV/z7ZG+/t9SOGqZekpzBpDFVSJv1iuSxELAE/xgexvbbS7Fz0u2lfnFjJuWdK/Bj8FaoQGAiNqVUNPwI4zbS4n/hYF5F1+OgcnqM4GQbzrYC/S23Lyg5XorMpCKAQWPCOoAg5bX2K8Lg1hXbnIfSLiy+gQ5cxhfdjSc6bOeYPXvUu4TCKNdb/rcnm0V9DlS7PK8CPl1FDba+QMnsbw53M1IceaFI3q+vk8YanXwBDdYdHYftVy+swDze0BJxhzAPaqhMvvK7ukHS+ZIKTElMJGHbk9c8AxzyHZYUe0G55La0jEeN5HKzCA8iaPzRDm7LkurzZASBzsYXqqmWd9hqtLsyOlPldaPtLs8ZKjm3ZbOgT2VARye9+e3me6/HJJ4nmwGUIVc0jcPipu6/KZYgB//M7qge9dgK1sftN0rmm2c7RyJk2Lk3g13MqbU5Yi1OQB+d3Ah5qR7Btl5nMbwVmdthCFvGlmxdb0tYYZt37ifi0w80aXedmDWrj5nyWSNSdGl8q00wdO+AszlJyLbjeahK/dyjUKVNsCKRipcaPN3EKU9R+3B8irEIaA44jSCKinqM8illTHdq2WL5Lq5pjMZ9xQvpSQ8QfuWAskZ2t19kdARmLy/lOB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(136003)(376002)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(66476007)(110136005)(316002)(66556008)(66946007)(64756008)(55236004)(53546011)(26005)(122000001)(54906003)(66446008)(9686003)(107886003)(478600001)(55016003)(38100700002)(6506007)(7696005)(71200400001)(8936002)(76116006)(8676002)(4326008)(52536014)(5660300002)(83380400001)(41300700001)(86362001)(2906002)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ISQclCfPbqyic65UJplMYWGUu7tgm8tBTGMvVEWiv1i3by9Gg2zieDsf1abL?=
 =?us-ascii?Q?DHUObiQY4w6VfV/t83/MRaBXRUX3d7hTYoSwW76s644bdmhWT2dJUJQpMGlZ?=
 =?us-ascii?Q?tfboe51N0GlwRZdxhx/o8CGcLue9xaE0zR8HoI7V8/8MCxpuPZ2KY36p2os+?=
 =?us-ascii?Q?mckWP+fzurAZAIF6BORb4jb9ruT8H5JQQmHpd87TIkHHB4FCCaBz3j7AH2Zp?=
 =?us-ascii?Q?XoeiLX7YT2yxRNPSVkfdrpE6v8UFkaBWBdoJaQa4Opbc0kb8htn2VQmvJRe/?=
 =?us-ascii?Q?+c2dXCLFVzBd6cSbu6IHOY3nCCU9KwUmEbnX728EGTWOY2/qWkL9bEumpUwn?=
 =?us-ascii?Q?qp3uh9T2++KYCnMxDN8amRRSFmcB6VEAuVnR39O9lsQuQjkOkHgbZPi9cDK2?=
 =?us-ascii?Q?ZdUE7y9BNcXGps+nfHqUtgfclJsIJG8sHBe6H/57JpKBtS9NoQW26kKHWBJg?=
 =?us-ascii?Q?jV7z9pbRT1jnPaLdzwf5KlBL93RKx1fyFdpXDJAniFpuTFgX81dZo47Z6aIH?=
 =?us-ascii?Q?KIdC4ancXpapyp+vZYIBu2AEIni9I49gsUQduXc2AKK4zqVxfRnJpLBZYuFL?=
 =?us-ascii?Q?CDtL3ZYd51+J4PoZGcucwVtM4v4uvbPR4OaE6fXeSOLh1/lpKwpRAl//5qsE?=
 =?us-ascii?Q?kfYFr6di3o7h1vPWzKBgR2OSfITzj6DahJPR0+lOfONIa/TvYlmrugvVYJp1?=
 =?us-ascii?Q?/ULQFlrEBxfiZ/+Jp+5Y2bmnis2A0Pufunlu/lz1hL6BIP7L2wUeBebK6CkA?=
 =?us-ascii?Q?sxD0b+3WfeZuNjapZB4gyYNJRsnku0J3icJp3GSYpb/eByTKAVqLvsVUtPh3?=
 =?us-ascii?Q?9j9aKGixezyKwVrHefem/Es2X0MxmGU0XvcsFXFjGOa7dx3hrnH/1OYnpvg0?=
 =?us-ascii?Q?UWDUFx/eiY2u2H2zWzwsg9xMCf7IvQ6yuQQV4jzCzP5Wt4A7Y/c69btEioKB?=
 =?us-ascii?Q?Y+F5VCK4KOfeNrYqKqzcTOxKhxByQ8OrksuVqilSIENWc7s0pSfX+gRFRyX6?=
 =?us-ascii?Q?BaCDkiLCM5LXmLCRiUvAE4VGQheYgXeBS4/ADQoPEcqjNF1NMpiKiyeSPlY+?=
 =?us-ascii?Q?lDomfxJDWTfxH8pWTrj/NdCficjvdtsvxpYr6GJSF114ecGZY9Sg1oV5PkAR?=
 =?us-ascii?Q?RrvQLGJ2fTtrreIsfidY1IFHe7UxGPVwVy6+FEInGtFseV2uG4pQYsPmhxmz?=
 =?us-ascii?Q?95KBpT0w2eCF9itOITyG5SNmVZ6I6bUpc4wWHRwMeYc1UaSOdZOzNz0/yFAy?=
 =?us-ascii?Q?T2Wzqym9dkeSzo0DulDSyUgpci+MrTdCyKFj7liGFho9JPQ+4VrDB9+tpbTX?=
 =?us-ascii?Q?2JO3LHd4Yrtp5Fa1oY2lvXz3cEDKqpISaPz5GmYJUj30tXSjzxiubxp2eyM9?=
 =?us-ascii?Q?c1e3GuFkBhxgxPaA/aamzJ7Ac74CE1jGCNyKtGDhTWOj6HPg/oWDlgpQhlzB?=
 =?us-ascii?Q?GjUZ10R7jDdC1cW6Apgx3sgZpjcUFfObIqiJgcJVzXPlLwHyz5KoCeCZgWyH?=
 =?us-ascii?Q?Q5gbIDSquMTSftsCt3/a+t4qz8t3ooGgohcAB5qzfO2QtqBDCcht8JAMSo3L?=
 =?us-ascii?Q?WbvR/iSG6pXSM/H6IAslEbqV26CYsKgfS8M5NY0LevPo+45lCqVw323yygt8?=
 =?us-ascii?Q?fQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 676e340d-7431-400a-9ba3-08dc1d85691e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2024 09:10:01.1019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QbPJkkk1Zr25NfaN8cKSE1RppIIu91FinPeKTOv/m0MpcWGJW9hVy/QfpsMyvgwpggVUalDPZoOa+/QPW+N34e1FlpnVQEKXn/8Oe8+06pKHiM9sk7UF2zvf8RISQF49
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7878
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706173806; x=1737709806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TpghJH9nEd5ep4xMKkrtEU/DJfZcR3iiD+CuWRnjK0=;
 b=PQ3/9IY/6r5WWmuUJRrknlq444KX6lJmQq1paG80kyitwCYjXyUZkCTR
 whdf0sd2fGpOaAlk8Fy5kTBIf++x1LLD5hEcddJzxfMH/hz12wfxPYizP
 qRml1xktNX8Vbf6vAtqGpLrKn5bawrXVkHCQBi5cmJXcfR/pDhVVoCMU2
 3gdtSIKsEykT26G1BpKWN+9WWy5kfvSjTNw5QS4nB9I7N1pbO26LG0Tmk
 5iUPl+prAgnT2/urxMszv/x9S8OrHvW6Vn6cJin/Wd0+6QNj0XR/0WSYO
 2KuHhjwfhZ5LhaWMNo4CYa4zSVF3WMhc8/Jc3X8a2CypW7EcKhl5Gia6r
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PQ3/9IY/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v7 iwl-next 4/7] ice: don't check
 has_ready_bitmap in E810 functions
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Tuesday, January 23, 2024 4:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v7 iwl-next 4/7] ice: don't check has_r=
eady_bitmap in E810 functions
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> E810 hardware does not have a Tx timestamp ready bitmap. Don't check
> has_ready_bitmap in E810-specific functions.
> Add has_ready_bitmap check in ice_ptp_process_tx_tstamp() to stop
> relying on the fact that ice_get_phy_tx_tstamp_ready() returns all 1s.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> V5 -> V6: introduced this patch which was a part of a previous one
>
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 23 +++++++++++------------
>  1 file changed, 11 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

