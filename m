Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78F45CAD3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 18:23:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9634401AF;
	Wed, 24 Nov 2021 17:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQ2nU5ONhAZt; Wed, 24 Nov 2021 17:23:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09824015E;
	Wed, 24 Nov 2021 17:23:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55BEA1BF28A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 17:23:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 518A361BB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 17:23:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRgQOWdAGYcI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 17:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 520D360BFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 17:23:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="259217516"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="259217516"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 09:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="591659487"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Nov 2021 09:06:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:06:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 09:06:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 09:06:39 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 09:06:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+kPXdNRGHGEXXtkq/DToaLfbfB8EYFxh5+dNwVXXGZVNvQQnBM65ZsIuKM4TEtzVkqfxalmZJcD7ThPEJuUADEWvtU+pd8MbPhf7uL4/ru2ATowjQhG3awaBpQnttR/Jy/QUo7vd8+rFSSCK0cEGHz72+YogCGxOCc+e3f2vdFAPxx4ViIifk+SR5uTFK4qEY3a3ogh3E0Z0EnxgfCh+yd2yFmcCgzf59s8j2rSYWKuMjemJkA2clV8vmx3oV20JaO0UqhBq7ijBA6GwAtWXKajhEcuAR/e8eG7OmZ06MD2enY3RxBOcV7F6/Lcy0beuswL4hmUkOC6dUDflgT7bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Nb+d0tPZysDGKYrRlkkjRLzdeb6fdjmIt9mc+Ajb8o=;
 b=hxoV8AK5ytXZgiefUIC7UNvwhgbn9Xgjo9GwWZP6gg7Z+XVa+vvaV4l6/ewldKwTz4iMFKzEVCcyTtJDtO9mEekuybEOCXFZcwdUyM0WRjj1ztxuT7ujVOtqm+2Y2SjxVMr8kv3iPorsqI15I1jxllwFDbwf03U65RcQLhe0hhD+vhylyuObnupBJCohrCpbYL0BC7UMQWhto+a9HIrjaBtYbBfTT3kQpVXghmKKLKZyIrIYSl9vwjcsvQJjey7SW0C2niX7wO1XsVHVcwBHkcVsftbR8jurefVuk7CTIrB9GRdyDnDy2Rws35/VcuxgnduDLBTmJZ9HaFiVcdA63A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9Nb+d0tPZysDGKYrRlkkjRLzdeb6fdjmIt9mc+Ajb8o=;
 b=RvOxj4cesOGxV3TcExf8Zag2yddtufX3ZlfWK1YVTvInptsKFFCB/hH53Pr3/UXzKDAS4HtiEB43SF6Wwp7NF8r8eybat4FpZ1+9mC9szqfpJadtcPYLTUlUloNQVLO7iSA7bI2j4lMSKNIRTbakc1d1gKheh0Wgggs2lvnICFg=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB5212.namprd11.prod.outlook.com (2603:10b6:806:114::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Wed, 24 Nov
 2021 17:06:38 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4690.029; Wed, 24 Nov 2021
 17:06:38 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add VF VLAN pruning
Thread-Index: AQHX35jtBWV4hE62RUOtTilnoZgQj6wS68CA
Date: Wed, 24 Nov 2021 17:06:37 +0000
Message-ID: <20d6054551498fedcf6d9604017a7809fcdd9aa2.camel@intel.com>
References: <20211122120216.11512-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211122120216.11512-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3c31fc7-bdc9-4364-9afc-08d9af6cc70f
x-ms-traffictypediagnostic: SA2PR11MB5212:
x-microsoft-antispam-prvs: <SA2PR11MB521286B615046AAFC02E7198C6619@SA2PR11MB5212.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aOJu3GvfT01gmgBk2wlDptiShHxsNq/s91eqmAojmoPn9v5KbN+9Wi8jatmgHC8U3c43QDE3Z6WuBLA3VeKQN9AjitAznc48Xw4wBWmb0yKJcwhCODRU8dhK2uB4IXkmSZRcimMHPztpuUlqdWTP5RX0mzX4SRx4J4PQr7grhPZJRUEtC1D0mzH5RqRwph8YVqL/L5d3Gb0APmwl4ZDoQg/ba/CvVt9iRRyColKebMpQvpWuX9EJIunCFCymj8v6QH9ya2pp2hU0GznMcq5zFwz8nUzpEgjme/Ar84VTm5CEfkZo34mftmRi2neFsUQgrRj6l38Wfpzzu6F/zbLsIJF+U8gu8SPYXOJ5meWHaMS4qNlDzP3nq7WLkjW7jpLnTPPqdTgYD6b5OjJtaUhh1EyYSU/Isns1HtWyNWAmOGdEEZP2eKq6KwiaPRK7velPBrqagmX0tvGUEwt46MPYkOj8WYLBcLy5coP8fypYbQGu/bEZ4//9zSMHHRhs32mABESyQMACgilaUqtG4ETuap5Zcx2sRZxLmG15ZtmByPEqQ0W2UWZ7h2Y0WFw2iYYnZPRKLHmx/CQ/Quqi2CHVBPpcH3l3ivVBnxUbiHTilGHNxhLn4Yp9tVfAkM66x0hkMSbgzuaFq4QwoAtmyahSc46xuQacs2hz/U/h8wiw30BQIH7ZDSqv8Tjg0tln6OHSC/HQqgINdKFi7nlKyAbqcg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(107886003)(2616005)(8676002)(76116006)(508600001)(64756008)(66946007)(6512007)(91956017)(8936002)(66446008)(66556008)(66476007)(110136005)(86362001)(54906003)(4326008)(83380400001)(316002)(38100700002)(26005)(122000001)(2906002)(4001150100001)(36756003)(186003)(6486002)(6506007)(71200400001)(38070700005)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bis1eEtEcnB2WU1zQTRtMnpCeGVBSUh4bERILzdQYkorUE9MditMSEN5ZWsy?=
 =?utf-8?B?VTlzdktPVjl5QXpCZU12WFJqV21ySG5NenFocTZFci9TMm1wUWF3QlNGTHZS?=
 =?utf-8?B?SzhtK2dmbVN2cm54U0ZzOGpmWHZWQWJLV2ozUlRGT0o4eXJ2Sm9lNm9KUkhY?=
 =?utf-8?B?T0tDRFltL3BIOHIyNTkreTIyN05maFJETFdSZVFuR3R3WE4zQld5R20rZWNF?=
 =?utf-8?B?Uld4Qm13Rm8rS0UwT2xkUTBnUElIbE9KeU5jMWFqVXJ3Rk1NcC9IUVNwOWtD?=
 =?utf-8?B?SEhuMGtTNFVrbU5wdVpkMXlBczBsYVdCMGMzbjVuS0FCczdkaU9LUnNMNUtR?=
 =?utf-8?B?QXBVSTFlY3UwWWNZWnRTNlo1dEdkMzhac0FiVkpzZ0tFS1ZvVEFCdGNxRnZv?=
 =?utf-8?B?YnlORFBUWUxZM2pPcXZXZWlPY25wNHFUVzJoZ2QvbFVDL21SRy93ZHIvK2Ew?=
 =?utf-8?B?TTIwVWRIbVF5Q1pQamErSVVONE96NmFHV3lXb0ZqU3J6QitrcVAzOVg5WCtX?=
 =?utf-8?B?QzYxT1VyaDlJMHlnTU1ESmpxU3pkUnE4U0pSNHROUVJUZUJCbkFxTnA0TEIx?=
 =?utf-8?B?THY3Z3pqbys1VkZBbEUrVGxpUlhHTlFKZmE0WXpyVlF4NmcrQVBibDFETG0w?=
 =?utf-8?B?WnRJbnV5WlhkTkoyL2RGbTVhRWZ5ajVKN2FzYnBGNCt6TVYxVjF4QkUwdkVZ?=
 =?utf-8?B?aVRQL0hJR0paUnM1bTFIQ1lTemFDeEtUN3FrNVRWSkdMTWlTK1VzR0orVGhs?=
 =?utf-8?B?QVNUV3RKdk80dWZ2OUQ4RDNYSXFLcFdVbGlDMUE1MXI5dEpLYktuNGNqUVkr?=
 =?utf-8?B?UnlkYTR1TkVzaFFiOXFXQ0JmWVJ4OEVoWkNDVTdYc0pxV0hIL3IvSUdEaDdZ?=
 =?utf-8?B?Nmo0ZlVRWGtNOFZXcW5XN01rMUlBcndvNXNxaEU5cE1Ob1RrTll4MXMvcm5n?=
 =?utf-8?B?ejR4MU9IU2FVL2lrdVdrbTZiUmFSenAwc2gwa3N6dERGWWdDMHFwbks0czQ0?=
 =?utf-8?B?SEJWRXU5V05ncjVXSzI5c3QxeE5uNG1nVUVYOTd6Vi83TmRrcGc1WFZvUVFY?=
 =?utf-8?B?SUVSRjNNODQyVzJFSHJlNi9oeTBpUkJGalIvZjJZYmpZb3N0Uk9IODFVUnU3?=
 =?utf-8?B?UXdLNnB2VUZJWitWMUdlQmhka1NqMWZuSFBUTDhGTzJOUTM0blBmZUpoSUZ1?=
 =?utf-8?B?WHA4cTlzVWpDK205VUJrUkhabk1jZkNVQThveVowd1ZxbEtHNTlwT1J0S3Ay?=
 =?utf-8?B?T2c4YkNWeGdMbHIxK001Q2RYLy83MzBzSGR3T1JlZHB6NHVRMWVhMUlidTZ5?=
 =?utf-8?B?SndGRXAwMGZYOUEyS1hjU1hCTGFLbEF3MllyTjFXKzcyMTVBK2RtaXBTMUZH?=
 =?utf-8?B?dndkL2lmMExoQzBpSHI2T0pmMjFKSktZMmpoa1lQSXhtTk1aV2J5UXNQbzRo?=
 =?utf-8?B?dVZEeG5yTmFaYlBNOUFHc2p6b1lLbGpnS3lRV3pjNkFzZng5WGRMOUc0ajJt?=
 =?utf-8?B?ckpOMmVJQ01oNkQxUVczbFFMQXgwNVAyUDdVNWozQ2dyUk84L1p2ZjE5c2NG?=
 =?utf-8?B?OFFTcmtYUEFKc0RCMWhvNFZObklGUWc4SDVlb2F1WndHb2hnbEJUSVRRYnd1?=
 =?utf-8?B?YWxqM09MR0FSRVI2NWFuMkdMd2tHa3hoNDRid2p2OWJHcmxZOFlxNDVxYXRi?=
 =?utf-8?B?Q0J5ZEVJekhqQVZlVkVQbFpuQnE1amVMQUhiY2JwZWdyMFJtTDZWM2hEMi9T?=
 =?utf-8?B?QUVLbnRMd2xzbVRFWFBsOXFjSTlIVEZZS2J3SElpSW43SGUxNy9HQXpnNldZ?=
 =?utf-8?B?bWF6SG5jV2pUdzYxMlZyTkpNa3YzZy8vWmNqVk50WWs0Nm83a01VcS90TnRo?=
 =?utf-8?B?TGpVVExGUUs4NVRNL1VvajQ0eEg4eWVaZGp2Ym4vdi9PZzVtMThJb3ZGQWVK?=
 =?utf-8?B?WERiaEJDK3BXMGFkMHFUZzlRQjhpcHNzNEdERWp6Yk02N2tvdmRVblVpVDdW?=
 =?utf-8?B?d284UWJibVgzZHQwRXRwZHlVaGtKVXBpT1BKbTNCdE5henVRL1VncDNuS1Vn?=
 =?utf-8?B?RlFiSlI3QWZpSHBseGlKVDRVRmdVemYvTlhNUlFNSy9WQW5xS0VHRUpwY0hU?=
 =?utf-8?B?eDFXYlp2TU9qVkdJVE5UaFhnbFA0RWhqNHdZZjhMZWp2a0ZIeXhmMWpBQTdy?=
 =?utf-8?B?THl4Sll4b01XbGp5TjlmVW5STzVhcmk4QllyM2tJTWpZWm9hTkRmTFlSYXRH?=
 =?utf-8?Q?KGxnEJzrOyT3Zo5/jthUFxtFio4Yut/bi+VzXS1wAo=3D?=
Content-ID: <BAB3DE83CDBE254785D42AA69EC5C720@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3c31fc7-bdc9-4364-9afc-08d9af6cc70f
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 17:06:37.8614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RctAISB8wTLITXJhyfOGH10oIuSp2BhnXptlgg/nL4/CBubC4wC/8R/icNG/uKvGBSTy41Q1b1Bm2hjlJ+THEyybeuvaLgpaMZC6YR7nVGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add VF VLAN pruning
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-11-22 at 13:02 +0100, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> VFs by default are able to see all tagged traffic regardless of trust
> and VLAN filters configured.
> 
> Add new private flag vf-vlan-pruning that allows changing of default
> VF behavior for tagged traffic. When the flag is turned on
> untrusted VF will only be able to receive untagged traffic
> or traffic with VLAN tags it has created interfaces for
> 
> The flag is off by default and can only be changed if
> there are no VFs spawned on the PF. This flag will only be effective
> when no PVID is set on VF and VF is not trusted.
> Add new function that computes the correct VLAN ID for VF VLAN
> filters
> based on trust, PVID, vf-vlan-prune-disable flag and current VLAN ID.
> 
> Testing Hints:
> 
> Test 1: vf-vlan-pruning == off
> ==============================
> 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning off (default setting)
> 2. Use scapy to send any VLAN tagged traffic and make sure the VF
> receives all VLAN tagged traffic that matches its destination MAC
> filters (unicast, multicast, and broadcast).
> 
> Test 2: vf-vlan-pruning == on
> ==============================
> 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning on
> 2. Use scapy to send any VLAN tagged traffic and make sure the VF
> does
> not receive any VLAN tagged traffic that matches its destination MAC
> filters (unicast, multicast, and broadcast).
> 3. Add a VLAN filter on the VF netdev
> > ip link add link eth0v0 name vlan10 type vlan id 10
> 4. Bring the VLAN netdev up
> > ip link set vlan10 up
> 4. Use scapy to send traffic with VLAN 10, VLAN 11 (anything not VLAN
> 10), and untagged traffic. Make sure the VF only receives VLAN 10
> and untagged traffic when the link partner is sending.
> 
> Test 3: vf-vlan-pruning == off && VF is in a port VLAN
> ==============================
> 1. Set the private flag
> > ethtool --set-priv-flag eth0 vf-vlan-pruning off (default setting)
> 2. Create a VF
> > echo 1 > sriov_numvfs
> 3. Put the VF in a port VLAN
> > ip link set eth0 vf 0 vlan 10
> 4. Use scapy to send traffic with VLAN 10 and VLAN 11 (anything not
> VLAN
> 10) and make sure the VF only receives untagged traffic when the link
> partner is sending VLAN 10 tagged traffic as the VLAN tag is expected
> to be stripped by HW for port VLANs and not visible to the VF.
> 
> Test 4: Change vf-vlan-pruning while VFs are created
> ==============================
> echo 0 > sriov_numvfs
> ethtool --set-priv-flag eth0 vf-vlan-pruning off
> echo 1 > sriov_numvfs
> ethtool --set-priv-flag eth0 vf-vlan-pruning on (expect failure)
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
This has checkpatch issues, please fix.

CHECK: Alignment should match open parenthesis
#108: FILE: drivers/net/ethernet/intel/i40e/i40e_ethtool.c:5283:
+               dev_warn(&pf->pdev->dev,
+                       "Changing vf-vlan-pruning flag while VF(s) are
active is not supported\n");

CHECK: Please don't use multiple blank lines
#112: FILE: drivers/net/ethernet/intel/i40e/i40e_ethtool.c:5287:
+
+


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
