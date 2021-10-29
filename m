Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C318443F3AD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 02:03:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CE4360815;
	Fri, 29 Oct 2021 00:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id acCfZBZDrg7i; Fri, 29 Oct 2021 00:03:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3DAA6080F;
	Fri, 29 Oct 2021 00:03:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE0B1BF9D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 00:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81A7E82725
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 00:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSaE3BJVrc-v for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 00:03:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79A658271D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 00:03:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="217732680"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="217732680"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 17:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448174938"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2021 17:03:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 17:03:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 28 Oct 2021 17:03:07 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 28 Oct 2021 17:03:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dqQJplItJgDwHUX9okITlA5PhflGn7xGoAg18JDkgHifFe5e3DqO7Ej7MsbG6fmmRk59jBNbpyCky4dVd0ETvu9LvVafOOFduR0pOUXisi9z+iCuQAWi/dQxREJSt1rhWL7Ays2esMVrw/6UNzj2KcH9sl73jC/BjnAAbR+Wsl2R9J8vGOI0gXOp83pazvkhCccbV4+54DvDs+HbOS96Qo0zhYxwQQ0wQyNMPTSJIZf5DtfNWIlBDvPzlzeXgDJCsoSLwcGXlmtO8kzDMlLj7YLD/1CIQibbmRLhyhegThMy7BbWdjMANgvxhU4brOAF/15axQhm6FMU3vITnmx8ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ugCNsxpDTgI2CDpCpLYoZXA0ocI7JZIeJ4qqjEt4GkU=;
 b=bCFISr6tiGEa2qCKA4+9ZTTmIn/WcxsRy+IZJ/SgI1yd6FwyVtUDIdKdsIYuia9LfH/dFl9GRcKfu2ZLBExhxRT5/TlH5tluVz4p6yQwBwiETcsyGwez4ZK+cRxA7ufEjHuYaj0K2JZbf3+TobU6QPRB6NLcqVGnsSikLSyEWeSrXj7w5ubhSIrH7IusGg1Wsjib3/k63xFh9p3g7F8ywthVqJAZMZVTt/j8ZgmkDhm0OnYY1n0FKEHqiC0o9G0DpCeLLhhcTeDuFNvzVhWSv50vFr8wyadpZI8UGrKP+FFU5WbOEBs4RG2cNJnzg6cs3DYyjBm0HEcZdhA7BmPRjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ugCNsxpDTgI2CDpCpLYoZXA0ocI7JZIeJ4qqjEt4GkU=;
 b=l6QMvZmut0blql/UZlaZg3rFEBdIJseYeDdH/c5rVy//tWwZMmgZ4AOXblMHUW3yHFhAVfeY+u0pLBm3e3IyXvaNL9CCqB6Ngc4btLV1DudU/+R9SWAOucjk+Pf1v0bUaGI2J2TYX72EOiARACwHa2BhzS+NB07/8eLJlvF09eA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2767.namprd11.prod.outlook.com (2603:10b6:805:5a::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 00:02:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4628.018; Fri, 29 Oct 2021
 00:02:32 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHXy+ub6fqsgJ8Sp0Snc82Pnzdkg6vpGEAA
Date: Fri, 29 Oct 2021 00:02:32 +0000
Message-ID: <b0d80a563e76a0b29bfad51ad0be9622b137cabe.camel@intel.com>
References: <20211028104114.71879-1-michal.maloszewski@intel.com>
In-Reply-To: <20211028104114.71879-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 683fd1fa-cba7-463c-4604-08d99a6f67cf
x-ms-traffictypediagnostic: SN6PR11MB2767:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB27678AD60813B775DCA59D44C6879@SN6PR11MB2767.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 85WLI5bTdfQrTqU3CHnbYgL1YMw8Q1ofUA0bYhwgiXFp9/pGqPnfnn6uzJEMsxthiQ2Q5QnX/zfNn8OxOP4uhxeKyVyo7Dc+xzl9yftdMl9Pxyh8elTf3Seay4MXHBnNkAROQRoEdr8MW9kCmNTjm9RLvcpCBfe3HArRYaopNw9/MRngc9Pq0CSjOt800dKGr8NReZ7hj0jRX/5Wd2d5EjyuyE29LZNmQACy24ujZRFpQ5pGteVxwu87Y0a8wlVXQI1b0mBgXFHBCamJv6AgMVkn0ftsYRf5AB1titHiKSjsb8FAszQzR2BDneLpi4wYGsnMn8qkkF+8+N6WJaHt1pG9Vfjt7cEvO2yX9vfRPnTqZ8Vy9HheDgUoCHzIWcQl0E5aig91Dceh3oqnqNXzbxwsXJXZ91J9PXnEEixb4Oh1Xntg4zMkkh8//ivId9lKYnlycmz/Vjy7l4lhNWnHkU+Pqosrgjm78hnrUAzw7WtcIwraGlhilxTbfbOPZYwV1uoxHjN4u6/etEtD1mO7OVt8Ycv3BULZ7p4r7rEBT82tNYp6tn4BV1917u/CbzfvooJp/UhVxbAcCznUiOvZrVYXdVKwiE6BViWR/9ac+mJhG/UN7mGEzqoPk4Z0N2CmnhNIRa1EaGXj4+tRo0q5mDiE9G5iaWdSJIOdkDfkd8FYg9yhaUvQuEE/lD4uX45P3pdayo51CdXJ22PdxvICvA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(122000001)(186003)(4001150100001)(36756003)(26005)(76116006)(6506007)(2906002)(38070700005)(38100700002)(82960400001)(110136005)(66446008)(2616005)(316002)(8676002)(66946007)(66556008)(66476007)(91956017)(86362001)(508600001)(6486002)(4326008)(64756008)(8936002)(5660300002)(6512007)(54906003)(15650500001)(71200400001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkNSQXdFeTdFanp5cWZMU1hrTEd0U1h2dmpsOGZ6RDQzRUJFTmxpTW5aWlRt?=
 =?utf-8?B?UmhQcTEvckN0ZFI3bEFMZG14WTh0RDNXYWZmRk9oOExOd0pCcTdKUDkyTVVC?=
 =?utf-8?B?V3hZU2xRa2xhd2ZXN2N5UkZ5U2xoZmZCKy9Jb2pJcFVIOFRsN2lnd2dPc3h4?=
 =?utf-8?B?UmxTakpqTGdadmRYTUR5VHVqelFIZEluZVllZzQwVE03cGxlWitOTjh0VkFH?=
 =?utf-8?B?SGdUSEhuRzlxalRzaXpFZUoxVXFXNExKbTlxekpkY3BOQ2tzN09QSmNJZXF6?=
 =?utf-8?B?RFFObWNOMExUaU81U2dsa0c1ODNzcHJNYUZaQ2Z0aGRjTTdYQVJQOVNXTGgv?=
 =?utf-8?B?VVUxNDhwZkQ0aTVOMHBxbk4wUHFTcWZJSEFibTlkdGlVbXZ6ZEJqemRDeiti?=
 =?utf-8?B?bVZtUVJVcmJRU1JmN1Nxb0pFSXZZUjE4TGYzKzlZK1FyYks2SDMvaCswVmN3?=
 =?utf-8?B?dWMwTG5BWGw5TGxDNXk2ZmtuS1pUaDFGcXVWRnY3VGxGY0lsVGgya2E1Y1dq?=
 =?utf-8?B?Y0RQbDlURU9hRzFNdmRXREpwTVJxMFNpT0U3STlXbkl4dXp4Zys3ejJwQi9L?=
 =?utf-8?B?TTVIaE13QnAzM2c4M1M2NGtVL3RPYlRKVm9Wd2pLUkpyRSt3enpxM2U1RkFx?=
 =?utf-8?B?Zy9IN2pwODVsSnNEaXMrUTdhcnRpUUozZ0JtT1MvZkJ6K0tEeVlDZzlTdUEw?=
 =?utf-8?B?eVRmbTNZY1lOckhQZzdDWFJJbVJzZ0lhRlhaZy83RGtoeW1rV2s1dTVlM2pV?=
 =?utf-8?B?cjRzVlZURFN4ZDFUMXVvTG1DMkhZQ0FIeUdXZ3FQbEFlMUZjdENxZHZGWnRD?=
 =?utf-8?B?UHcwd1F1R1hxM2tXNDE0OTF3NXVYcm0weTliZGlGV3RSUFFUVEc4ZEk0NXcw?=
 =?utf-8?B?ZTczMHhTMUVhc2pmaFZPaEUyTXhqK2VIV3diTlFUQTVGbXllQUVMVktYSkxH?=
 =?utf-8?B?QWZ1S2ZxVEIyR1RocEFkNlZ1aEVLbDRaUWxqcnRGeXRTOGllc250ZFg5TVls?=
 =?utf-8?B?MktGRHdwbFVGRGNSZE16WWIyeWJiVk9tanFMN1ZFb0ZvYWtHMU1lNDJmREpz?=
 =?utf-8?B?bTQxSk1sbk1VYXkvSkZFTXIrdFhjNGl4OXJ0blRBUUFGU2hjb1JXOWR4SWlW?=
 =?utf-8?B?OHA5Z0FNM2ViMmh6ZGN0akpRdG1yYnQ5MGFiVXkrQ0E5dHljSno2VytIMWFV?=
 =?utf-8?B?SGNONFhhZ2lURDAvSmhJL21pczREc1lDSVFjcEpjSUpEekliTDBQWHNmZ2ps?=
 =?utf-8?B?R0NOOGJLaWMybGF3WGNKNU80allveGROU0IxcHpVNC9PWDZsRVNWVnhQbm9H?=
 =?utf-8?B?bEh2T3RqWU9GSnBkRkhFNUUrSld2cUtBMWtWUlhBRUVSOVhMbVhjQStDaG01?=
 =?utf-8?B?RlNjMnIyVy9kaS8ydSs5VTgvT25MeWx1L1Jub1lBUzB3WkhXRk1ieXljU3Bq?=
 =?utf-8?B?WS9acytUVzBNYUZMRjdleHFKNzhkZUFSRDRXdTBTc1l4QlJaNS85Y2l3eFdr?=
 =?utf-8?B?cnBOOVFUOUpwK0VaVUZqaXdDaWxtY2RiK25jSmQ3UVNhb0FYbnR6aENWTmFI?=
 =?utf-8?B?TnBOeUt2SURZdUhRcm9pUzI0VjJzRFRFdWRjYkZ4bkxRekRJRUV2SjQ1Q1RW?=
 =?utf-8?B?NHgwdmpUTndFTm9aNStOTC91am83WEJFUHVHNkNtWm9wM3hyVmVhSURjZmdn?=
 =?utf-8?B?WWNzajJzb2YrRlMwS3VOdm41S2RmOU9tRm44aEgzT0RVSjhGTzEvZjZvaExk?=
 =?utf-8?B?T3V4V1VuQ3FicStXRjRIc1loWkpGQ2creEZXeXNpZks0YWpHc1hYZXJmQS9P?=
 =?utf-8?B?SDRnNGdvSXRwRGEzeXJCczhYS2g1ZW5xY2VpZWljVkpSZ0gzNS9vU1dlclBo?=
 =?utf-8?B?K2RXQlVFc3hldFNOWnNtS2NJaDdGK2JrN2JPTkVVR3Z4MTNBd3lQY2VqVDJG?=
 =?utf-8?B?cCtZVjZBUmJJZkFOTFd2WVdneS83ZG5OcnRKNCtFOTBpdlMzVUFKNkxOTFZn?=
 =?utf-8?B?T1lZT1FGNHNxeG16NU9aZmd6bmFrbXZLb1lzRDJHMVhuNGl1RmNBUmp4VEov?=
 =?utf-8?B?TUtoLzF3QWJDbG4vRXJtbitBekd6VXhmRlZFRzljRitUWURmNU5vVFcyY0xq?=
 =?utf-8?B?cllQRm1WeXV5Zk5TTkNickhVUDlUUW1RaXhKcnNaSXpiOFdhOVV6NGVETHJD?=
 =?utf-8?B?OU1zWDMxT203Vk5rQ2ZzUHlRVUhwYUh5bzE5UmgyNFdiRVFvWERQeE5ZMnFI?=
 =?utf-8?Q?C7n6pg37oDMhqmI07wHggWteyumd0DTKk26oBlsc00=3D?=
Content-ID: <42566689FA33464DB312B30AA66B3814@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 683fd1fa-cba7-463c-4604-08d99a6f67cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 00:02:32.1731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /k+rpcNOEQ+gRhGRLRj9G8UOzM4S7NbklDOkR3d8ViEDZZBM1Pdh8mF3I6mWp+QflMSQTRz0uXDqtQubNLM1YoON04bzNQzUOBy9tfI96Ek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIxLTEwLTI4IGF0IDEwOjQxICswMDAwLCBNaWNoYWwgTWFsb3N6ZXdza2kgd3Jv
dGU6Cj4gTW9kaWZ5IG5ldGRldi0+ZmVhdHVyZXMgZm9yIHZsYW4gc3RyaXBwaW5nIGJhc2VkIG9u
IHZpcnR1YWwKPiBjaGFubmVsIG1lc3NhZ2VzIHJlY2VpdmVkIGZyb20gdGhlIFBGLiBDaGFuZ2Ug
aXMgbmVlZGVkCj4gdG8gc3luY2hyb25pemUgdmxhbiBzdHJpcCBzdGF0dXMgYmV0d2VlbiBQRiBz
eXNmcyBhbmQgaWF2ZiBldGh0b29sLgo+IAo+IEZpeGVzOiAzMTBhMmFkOTJlM2YgKCJ2aXJ0Y2hu
bDogcmVuYW1lIGk0MGUgdG8gZ2VuZXJpYyB2aXJ0Y2hubCIpCj4gU2lnbmVkLW9mZi1ieTogTm9y
YmVydCBDaW9zZWsgPG5vcmJlcnR4LmNpb3Nla0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
TWljaGFsIE1hbG9zemV3c2tpIDxtaWNoYWwubWFsb3N6ZXdza2lAaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEJyZXR0IENyZWVsZXkgPGJyZXR0LmNyZWVsZXlAaW50ZWwuY29tPgo+IC0tLQoK
U2luY2UgdGhpcyBhbiB1cGRhdGUgdG8gYSBwcmV2aW91cyBwYXRjaCwgdGhpcyBzaG91bGQgYmUg
YSB2MiBhbmQKaW5jbHVkZSBjaGFuZ2Vsb2cuCgpBbHNvLCB0aGlzIGRvZXNuJ3Qgc2VlbSB0byBh
ZGRyZXNzIEplc3NlJ3MgY29tbWVudCBvbgpuZXRkZXZfdXBkYXRlX2ZlYXR1cmVzKCkKCj4gwqAu
Li4vbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jwqDCoCB8IDQyCj4gKysr
KysrKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRj
aG5sLmMKPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5j
Cj4gaW5kZXggYmRjNjA0MDM2MS4uZWQxYzhiYzNmNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4gQEAgLTE0NTYsNiArMTQ1Niwy
NCBAQCB2b2lkIGlhdmZfcmVxdWVzdF9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyCj4gKmFkYXB0
ZXIpCj4gwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPmN1cnJlbnRfb3AgPSBWSVJUQ0hOTF9PUF9V
TktOT1dOOwo+IMKgfQo+IMKgCj4gKy8qKgo+ICsgKiBpYXZmX25ldGRldl9mZWF0dXJlc192bGFu
X3N0cmlwX3NldCAtIHVwZGF0ZSB2bGFuIHN0cmlwIHN0YXR1cwo+ICsgKiBAbmV0ZGV2OiBwdHIg
dG8gbmV0ZGV2IGJlaW5nIGFkanVzdGVkCj4gKyAqIEBlbmFibGU6IGVuYWJsZSBvciBkaXNhYmxl
IHZsYW4gc3RyaXAKPiArICoKPiArICogSGVscGVyIGZ1bmN0aW9uIHRvIGNoYW5nZSB2bGFuIHN0
cmlwIHN0YXR1cyBpbiBuZXRkZXYtPmZlYXR1cmVzLgo+ICsgKi8KPiArc3RhdGljIHZvaWQgaWF2
Zl9uZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQoc3RydWN0IG5ldF9kZXZpY2UKPiAqbmV0
ZGV2LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29uc3QgYm9vbCBl
bmFibGUpCj4gK3sKPiArwqDCoMKgwqDCoMKgwqBpZiAoZW5hYmxlKQo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBuZXRkZXYtPmZlYXR1cmVzIHw9Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBORVRJRl9GX0hXX1ZMQU5fQ1RBR19SWCB8IE5F
VElGX0ZfSFdfVkxBTl9SWDsKPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoG5ldGRldi0+ZmVhdHVyZXMgJj0KPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH5ORVRJRl9GX0hXX1ZMQU5fQ1RBR19SWCAmCj4g
fk5FVElGX0ZfSFdfVkxBTl9SWDsKPiArfQo+ICsKPiDCoC8qKgo+IMKgICogaWF2Zl92aXJ0Y2hu
bF9jb21wbGV0aW9uCj4gwqAgKiBAYWRhcHRlcjogYWRhcHRlciBzdHJ1Y3R1cmUKPiBAQCAtMTY3
OSw4ICsxNjk3LDE4IEBAIHZvaWQgaWF2Zl92aXJ0Y2hubF9jb21wbGV0aW9uKHN0cnVjdAo+IGlh
dmZfYWRhcHRlciAqYWRhcHRlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgYnJlYWs7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXNlIFZJ
UlRDSE5MX09QX0VOQUJMRV9WTEFOX1NUUklQUElORzoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl93YXJuKCZhZGFwdGVyLT5wZGV2LT5kZXYsICJD
aGFuZ2luZyBWTEFOCj4gU3RyaXBwaW5nIGlzIG5vdCBhbGxvd2VkIHdoZW4gUG9ydCBWTEFOIGlz
IGNvbmZpZ3VyZWRcbiIpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyogVmxhbiBzdHJpcHBpbmcgY291bGQgbm90IGJlIGVuYWJsZWQgYnkKPiBldGh0
b29sLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
RGlzYWJsZSBpdCBpbiBuZXRkZXYtPmZlYXR1cmVzLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpYXZmX25ldGRldl9mZWF0dXJlc192bGFuX3N0cmlwX3NldChu
ZXRkZXYsCj4gZmFsc2UpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgYnJlYWs7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXNlIFZJ
UlRDSE5MX09QX0RJU0FCTEVfVkxBTl9TVFJJUFBJTkc6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRldiwg
IkNoYW5naW5nIFZMQU4KPiBTdHJpcHBpbmcgaXMgbm90IGFsbG93ZWQgd2hlbiBQb3J0IFZMQU4g
aXMgY29uZmlndXJlZFxuIik7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAvKiBWbGFuIHN0cmlwcGluZyBjb3VsZCBub3QgYmUgZGlzYWJsZWQgYnkKPiBl
dGh0b29sLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogRW5hYmxlIGl0IGluIG5ldGRldi0+ZmVhdHVyZXMuCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlhdmZfbmV0ZGV2X2ZlYXR1cmVzX3ZsYW5fc3RyaXBfc2V0
KG5ldGRldiwKPiB0cnVlKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBicmVhazsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRlZmF1
bHQ6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2
X2VycigmYWRhcHRlci0+cGRldi0+ZGV2LCAiUEYgcmV0dXJuZWQKPiBlcnJvciAlZCAoJXMpIHRv
IG91ciByZXF1ZXN0ICVkXG4iLAo+IEBAIC0xODk3LDYgKzE5MjUsMjAgQEAgdm9pZCBpYXZmX3Zp
cnRjaG5sX2NvbXBsZXRpb24oc3RydWN0Cj4gaWF2Zl9hZGFwdGVyICphZGFwdGVyLAo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2tfYmgoJmFkYXB0ZXItPmFkdl9y
c3NfbG9jayk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIFZJUlRD
SE5MX09QX0VOQUJMRV9WTEFOX1NUUklQUElORzoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgLyogUEYgZW5hYmxlZCB2bGFuIHN0cmlwIG9uIHRoaXMgVkYuCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIFVwZGF0ZSBuZXRkZXYtPmZlYXR1cmVzIGlmIG5lZWRlZCB0
byBiZSBpbiBzeW5jCj4gd2l0aCBldGh0b29sLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCF2X3JldHZhbCkK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlhdmZfbmV0
ZGV2X2ZlYXR1cmVzX3ZsYW5fc3RyaXBfc2V0KG5ldGRldiwKPiB0cnVlKTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gK8KgwqDCoMKgwqDCoMKgY2FzZSBWSVJUQ0hO
TF9PUF9ESVNBQkxFX1ZMQU5fU1RSSVBQSU5HOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAvKiBQRiBkaXNhYmxlZCB2bGFuIHN0cmlwIG9uIHRoaXMgVkYuCj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIFVwZGF0ZSBuZXRkZXYtPmZlYXR1cmVzIGlmIG5lZWRlZCB0
byBiZSBpbiBzeW5jCj4gd2l0aCBldGh0b29sLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCF2X3JldHZhbCkK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlhdmZfbmV0
ZGV2X2ZlYXR1cmVzX3ZsYW5fc3RyaXBfc2V0KG5ldGRldiwKPiBmYWxzZSk7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+IMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGFkYXB0ZXItPmN1cnJlbnRfb3Ag
JiYgKHZfb3Bjb2RlICE9IGFkYXB0ZXItCj4gPmN1cnJlbnRfb3ApKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl9kYmcoJmFkYXB0ZXItPnBkZXYt
PmRldiwgIkV4cGVjdGVkCj4gcmVzcG9uc2UgJWQgZnJvbSBQRiwgcmVjZWl2ZWQgJWRcbiIsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
